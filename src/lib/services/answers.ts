
import { supabase } from '../supabase';

export const answerService = {
    /**
     * Saves a single user answer, validating that the option exists and belongs to the specified question.
     * @param userId The ID of the user.
     * @param questionId The ID of the question.
     * @param optionId The ID of the selected option.
     * @returns A boolean indicating whether the answer was successfully saved.
     */
    async saveAnswer(userId: string, questionId: number, optionId: number): Promise<boolean> {
        // 1. Validate option existence and ensure it belongs to the correct question
        const { data: optionData, error: optionFetchError } = await supabase
            .from('question_options')
            .select('id, question_id')
            .eq('id', optionId)
            .single();

        if (optionFetchError || !optionData) {
            console.error('Error fetching option or option not found:', optionFetchError?.message || `Option with ID ${optionId} not found.`);
            return false;
        }

        if (optionData.question_id !== questionId) {
            console.error(`Option ${optionId} does not belong to question ${questionId}.`);
            return false;
        }

        // 2. Save the answer
        const { error: saveError } = await supabase
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

        if (saveError) {
            console.error('Error saving answer:', saveError.message);
            return false;
        }

        return true;
    },

    /**
     * Saves multiple user answers in bulk, validating that all options exist and belong to their respective questions.
     * If any option is invalid, no answers are saved and the operation fails.
     * @param userId The ID of the user.
     * @param answers An array of objects, each containing questionId and optionId.
     * @returns A boolean indicating whether all answers were successfully saved.
     */
    async saveBulkAnswers(userId: string, answers: { questionId: number; optionId: number }[]): Promise<boolean> {
        if (!answers || answers.length === 0) {
            return true; // No answers to save, consider it a success
        }

        // 1. Collect all unique option IDs for validation
        const uniqueOptionIds = Array.from(new Set(answers.map(a => a.optionId)));

        // 2. Validate all options in a single query
        const { data: existingOptions, error: optionsFetchError } = await supabase
            .from('question_options')
            .select('id, question_id')
            .in('id', uniqueOptionIds);

        if (optionsFetchError) {
            console.error('Error fetching options for bulk validation:', optionsFetchError.message);
            return false;
        }

        if (!existingOptions || existingOptions.length !== uniqueOptionIds.length) {
            const foundOptionIds = new Set(existingOptions?.map(o => o.id) || []);
            const missingOptionIds = uniqueOptionIds.filter(id => !foundOptionIds.has(id));
            console.error(`One or more options not found during bulk save: ${missingOptionIds.join(', ')} `);
            return false;
        }

        // Create a map for quick lookup of option's question_id
        const optionQuestionMap = new Map(existingOptions.map(o => [o.id, o.question_id]));

        // 3. Further validate that each option belongs to its specified question
        for (const answer of answers) {
            const expectedQuestionId = optionQuestionMap.get(answer.optionId);
            if (expectedQuestionId === undefined || expectedQuestionId !== answer.questionId) {
                console.error(`Option ${answer.optionId} does not belong to question ${answer.questionId} during bulk save.`);
                return false; // Fail if any option-question mismatch
            }
        }

        // 4. Format answers for upsert
        const formattedAnswers = answers.map(a => ({
            user_id: userId,
            question_id: a.questionId,
            option_id: a.optionId,
            updated_at: new Date().toISOString()
        }));

        // 5. Perform bulk upsert
        const { error: saveError } = await supabase
            .from('user_answers')
            .upsert(formattedAnswers, { onConflict: 'user_id, question_id' });

        if (saveError) {
            console.error('Error saving bulk answers:', saveError.message);
            return false;
        }

        return true;
    },

    /**
     * Retrieves all answers for a given user.
     * @param userId The ID of the user.
     * @returns A Supabase query result containing the user's answers or an error.
     */
    async getUserAnswers(userId: string) {
        return await supabase
            .from('user_answers')
            .select('*')
            .eq('user_id', userId);
    }
};

