import { supabase } from './supabase';
import { CategoryCode, MatchResult } from '@/types';

// Helper to load answers (mock implementation - needs real DB queries)
async function loadAnswers(userId: string, questionType: 'A' | 'B' | 'C') {
    const { data, error } = await supabase
        .from('user_answers')
        .select('question_id, option_id')
        .eq('user_id', userId)
    // We need to join with questions to filter by type, 
    // but for simplicity let's assume we have a helper or view.
    // In reality, we'd fetch all answers and filter in memory or use a join.
    // For this implementation, let's assume we get a Map<questionId, optionId>

    if (error) throw error;

    // This is a placeholder. In production, we need to filter by question type 'A', 'B', or 'C'.
    // For now, returning an empty map to satisfy TS.
    return new Map<number, number>();
}

async function getOptionCompatibility(qId: number, optA: number, optB: number): Promise<number> {
    // Fetch from option_compatibility table
    // Return 0, 25, 50, 75, or 100
    return 100; // Placeholder
}

async function getOptionData(optId: number) {
    // Fetch option details (is_critical, tolerance_level)
    return { is_critical: false, tolerance_level: 0 };
}

async function getQuestionData(qId: number) {
    // Fetch category_id, weight
    return { category_id: 1, question_weight: 1.0 };
}

async function getCategoryCode(catId: number): Promise<CategoryCode> {
    // Map ID to Code
    return 'PERSONALITY';
}

// --- CORE LOGIC ---

function applyTolerance(
    baseScore: number,
    toleranceLevel: number // 0=Intolerant, 1=Medium, 2=High
): number {
    if (baseScore >= 75) return baseScore;

    if (baseScore === 50) {
        if (toleranceLevel === 2) return 75;
        if (toleranceLevel === 1) return 60;
        return 50;
    }

    // If baseScore is low (0 or 25)
    if (baseScore <= 25) {
        if (toleranceLevel === 2) return 50; // High tolerance saves it a bit
        return baseScore;
    }

    return baseScore;
}

async function computeDirectionalMatch(
    seekerId: string,
    seekerA: Map<number, number>,
    seekerC: Map<number, number>,
    candidateB: Map<number, number>
) {
    const categoryScoresSum = new Map<CategoryCode, number>();
    const categoryWeightsSum = new Map<CategoryCode, number>();
    let criticalPoints = 0;

    // Find common questions (where Seeker has A and Candidate has B)
    // Note: In the real app, A and B questions are pairs. 
    // We need a mapping from Question A ID -> Question B ID.
    // For simplicity, let's assume the Map keys are the "Pair ID" or we have a mapping.
    // Actually, the prompt implies Question A and Question B are separate rows.
    // So we need to map Q_A_ID to Q_B_ID.
    // Let's assume we have a helper `getPairQuestionId(qA_Id) -> qB_Id`.

    for (const [qA_Id, optA_Id] of seekerA.entries()) {
        // Find corresponding B question for the candidate
        // This logic depends on how we link A and B. 
        // Let's assume for now they share a "related_question_id" or similar.
        // For this skeleton, I'll iterate and assume we can find the match.

        const qB_Id = qA_Id; // Placeholder: assume same ID for simplicity in this draft, but in DB they are different.
        // REALITY CHECK: We need a way to link Q1A to Q1B. 
        // The DB schema has `related_question_id`.

        if (!candidateB.has(qB_Id)) continue;

        const optB_Id = candidateB.get(qB_Id)!;
        const optC_Id = seekerC.get(qA_Id); // Assuming C is linked to A's ID or pair ID

        let score = await getOptionCompatibility(qA_Id, optA_Id, optB_Id);

        // Apply Tolerance (C)
        if (optC_Id) {
            const tolData = await getOptionData(optC_Id);
            score = applyTolerance(score, tolData.tolerance_level);
        }

        // Critical Point Check
        const optA_Data = await getOptionData(optA_Id);
        const optB_Data = await getOptionData(optB_Id);

        if (score === 0 && (optA_Data.is_critical || optB_Data.is_critical)) {
            criticalPoints++;
        }

        // Aggregate Category Scores
        const qData = await getQuestionData(qA_Id);
        const catCode = await getCategoryCode(qData.category_id);

        const currentSum = categoryScoresSum.get(catCode) || 0;
        const currentWeight = categoryWeightsSum.get(catCode) || 0;

        categoryScoresSum.set(catCode, currentSum + (score * qData.question_weight));
        categoryWeightsSum.set(catCode, currentWeight + qData.question_weight);
    }

    // Calculate averages
    const categoryScores: Partial<Record<CategoryCode, number>> = {};
    for (const [code, sum] of categoryScoresSum.entries()) {
        const weight = categoryWeightsSum.get(code) || 1;
        categoryScores[code] = sum / weight;
    }

    return { categoryScores, criticalPoints };
}

export async function matchUsers(userU: string, userV: string): Promise<MatchResult> {
    // Load Answers
    const uA = await loadAnswers(userU, 'A');
    const uB = await loadAnswers(userU, 'B');
    const uC = await loadAnswers(userU, 'C');

    const vA = await loadAnswers(userV, 'A');
    const vB = await loadAnswers(userV, 'B');
    const vC = await loadAnswers(userV, 'C');

    // Direction U -> V
    const dirUtoV = await computeDirectionalMatch(userU, uA, uC, vB);

    // Direction V -> U
    const dirVtoU = await computeDirectionalMatch(userV, vA, vC, uB);

    // Merge Scores
    const finalCategories: any = {};
    let totalWeightedScore = 0;

    // Weights (Hardcoded for now, should come from DB)
    const weights: Record<CategoryCode, number> = {
        'PERSONALITY': 0.25,
        'VALUES': 0.25,
        'LIFESTYLE': 0.15,
        'FUTURE': 0.15,
        'LIMITS': 0.10,
        'SEX_RELATIONSHIP': 0.05,
        'FINANCES': 0.05
    };

    const allCodes = Object.keys(weights) as CategoryCode[];

    for (const code of allCodes) {
        const s1 = dirUtoV.categoryScores[code] || 0;
        const s2 = dirVtoU.categoryScores[code] || 0;
        const avg = (s1 + s2) / 2;
        finalCategories[code] = avg;
        totalWeightedScore += avg * weights[code];
    }

    // Boosts & Penalties
    let boosted = false;
    let penalized = false;

    // Boost: 3+ categories >= 90
    const highCats = Object.values(finalCategories).filter((s: any) => s >= 90).length;
    if (highCats >= 3) {
        totalWeightedScore += 5;
        boosted = true;
    }

    // Penalty: Values < 50
    if (finalCategories['VALUES'] < 50) {
        totalWeightedScore -= 10;
        penalized = true;
    }

    // Clamp
    totalWeightedScore = Math.max(0, Math.min(100, totalWeightedScore));

    return {
        overall_score: totalWeightedScore,
        category_scores: finalCategories,
        critical_points_count: Math.max(dirUtoV.criticalPoints, dirVtoU.criticalPoints),
        boosted,
        penalized
    };
}
