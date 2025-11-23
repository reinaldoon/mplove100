import { supabase } from '../supabase';
import { Question, Option } from '@/types';

export const questionService = {
    async fetchQuestionsByType(type: 'A' | 'B' | 'C') {
        const { data, error } = await supabase
            .from('questions')
            .select(`
        *,
        options:question_options(*)
      `)
            .eq('type', type)
            .eq('is_active', true)
            .order('question_order', { ascending: true });

        if (error) {
            console.error(`Error fetching questions of type ${type}:`, error);
            return [];
        }

        // Sort options by display_order
        const questions = data.map((q: any) => ({
            ...q,
            options: q.options?.sort((a: Option, b: Option) => a.display_order - b.display_order)
        }));

        return questions as Question[];
    },

    async fetchAllQuestions() {
        const { data, error } = await supabase
            .from('questions')
            .select(`
        *,
        options:question_options(*)
      `)
            .eq('is_active', true)
            .order('question_order', { ascending: true });

        if (error) {
            console.error('Error fetching all questions:', error);
            return [];
        }

        const questions = data.map((q: any) => ({
            ...q,
            options: q.options?.sort((a: Option, b: Option) => a.display_order - b.display_order)
        }));

        return questions as Question[];
    }
};
