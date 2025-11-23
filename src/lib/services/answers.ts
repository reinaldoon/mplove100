import { supabase } from '../supabase';

export const answerService = {
    async saveAnswer(userId: string, questionId: number, optionId: number) {
        const { error } = await supabase
            .from('user_answers')
            .upsert(
                {
                    user_id: userId,
                    question_id: questionId,
                    option_id: optionId,
                    updated_at: new Date().toISOString()
                },
                { onConflict: 'user_id, question_id' }
            );

        if (error) {
            console.error('Error saving answer:', error);
            throw error;
        }
    },

    async saveBulkAnswers(userId: string, answers: { questionId: number; optionId: number }[]) {
        const formattedAnswers = answers.map(a => ({
            user_id: userId,
            question_id: a.questionId,
            option_id: a.optionId,
            updated_at: new Date().toISOString()
        }));

        const { error } = await supabase
            .from('user_answers')
            .upsert(formattedAnswers, { onConflict: 'user_id, question_id' });

        if (error) {
            console.error('Error saving bulk answers:', error);
            throw error;
        }
    },

    async getUserAnswers(userId: string) {
        return await supabase
            .from('user_answers')
            .select('*')
            .eq('user_id', userId);
    }
};
