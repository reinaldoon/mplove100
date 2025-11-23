import { supabase } from '../supabase';
import { MatchResult, Category } from '@/types';

export const matchingService = {
    // 1. Calculate compatibility between two users
    async calculateCompatibility(userAId: string, userBId: string) {
        // Fetch answers for both users
        const { data: answersA, error: errorA } = await supabase
            .from('user_answers')
            .select('question_id, option_id')
            .eq('user_id', userAId);

        const { data: answersB, error: errorB } = await supabase
            .from('user_answers')
            .select('question_id, option_id')
            .eq('user_id', userBId);

        if (errorA || errorB || !answersA || !answersB) {
            console.error('Error fetching answers for matching:', errorA, errorB);
            return null;
        }

        // Fetch categories to calculate weighted scores
        const { data: categories } = await supabase.from('categories').select('*');
        if (!categories) return null;

        // Fetch compatibility matrix (only for answered questions)
        // Optimization: In a real app, we would cache this or do it in SQL functions.
        // For now, we'll fetch relevant compatibility rows.
        const questionIds = answersA.map(a => a.question_id); // Assuming both answered same questions for now

        // This part is tricky to do efficiently in client-side JS without fetching too much data.
        // A better approach for production is a Database Function (RPC).
        // But for this MVP, let's assume we have a helper to get compatibility scores.

        let totalWeightedScore = 0;
        let totalWeight = 0;
        const categoryScores: Record<string, { score: number; count: number }> = {};

        // Initialize category scores
        categories.forEach(cat => {
            categoryScores[cat.code] = { score: 0, count: 0 };
        });

        // Iterate through User A's answers
        for (const ansA of answersA) {
            const ansB = answersB.find(a => a.question_id === ansA.question_id);
            if (!ansB) continue; // Skip if User B hasn't answered this question

            // Fetch compatibility score for this pair of options
            const { data: comp } = await supabase
                .from('option_compatibility')
                .select('compatibility_score, questions(category_id)')
                .eq('question_id', ansA.question_id)
                .eq('option_a_id', ansA.option_id)
                .eq('option_b_id', ansB.option_id)
                .single();

            if (comp) {
                const score = comp.compatibility_score;
                // @ts-ignore
                const categoryId = comp.questions.category_id;
                const category = categories.find(c => c.id === categoryId);

                if (category) {
                    categoryScores[category.code].score += score;
                    categoryScores[category.code].count += 1;
                }
            }
        }

        // Calculate final scores per category
        const finalCategoryScores: Record<string, number> = {};

        categories.forEach(cat => {
            const { score, count } = categoryScores[cat.code];
            const avgScore = count > 0 ? score / count : 0; // Default to 0 if no questions answered in category
            finalCategoryScores[cat.code] = avgScore;

            totalWeightedScore += avgScore * (cat.weight_percent / 100);
            totalWeight += (cat.weight_percent / 100);
        });

        // Normalize total score if not all categories are present (optional, but good for partial answers)
        const overallScore = totalWeight > 0 ? totalWeightedScore / totalWeight : 0;

        // Save match result
        const { error: saveError } = await supabase
            .from('matches')
            .upsert({
                user_a_id: userAId,
                user_b_id: userBId,
                overall_score: overallScore,
                personality_score: finalCategoryScores['PERSONALITY'] || 0,
                lifestyle_score: finalCategoryScores['LIFESTYLE'] || 0,
                values_score: finalCategoryScores['VALUES'] || 0,
                future_score: finalCategoryScores['FUTURE'] || 0,
                limits_score: finalCategoryScores['LIMITS'] || 0,
                sex_relationship_score: finalCategoryScores['SEX_RELATIONSHIP'] || 0,
                finances_score: finalCategoryScores['FINANCES'] || 0,
                updated_at: new Date().toISOString()
            });

        if (saveError) {
            console.error('Error saving match:', saveError);
        }

        return {
            userId: userBId,
            overallScore,
            categoryScores: finalCategoryScores
        };
    },

    // 2. Find best matches for a user
    async findMatches(userId: string) {
        // Get all other users (in a real app, filter by location, gender preference, etc.)
        const { data: users } = await supabase
            .from('profiles')
            .select('id')
            .neq('id', userId)
            .limit(10); // Limit for demo

        if (!users) return [];

        const matches = [];
        for (const otherUser of users) {
            const match = await this.calculateCompatibility(userId, otherUser.id);
            if (match) {
                matches.push(match);
            }
        }

        // Sort by score
        return matches.sort((a, b) => b.overallScore - a.overallScore);
    }
};
