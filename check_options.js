const { createClient } = require('@supabase/supabase-js');

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseAnonKey) {
    console.error('Missing env vars');
    process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseAnonKey);

async function checkOptions() {
    // Get ID of Question 1 (Type A)
    const { data: questions, error: qError } = await supabase
        .from('questions')
        .select('id, text_pt')
        .eq('question_order', 1)
        .eq('type', 'A')
        .single();

    if (qError) {
        console.error('Error fetching question 1:', qError);
        return;
    }

    console.log('Question 1:', questions);

    // Get options for this question
    const { data: options, error: oError } = await supabase
        .from('question_options')
        .select('*')
        .eq('question_id', questions.id);

    if (oError) {
        console.error('Error fetching options:', oError);
        return;
    }

    console.log('Options count:', options.length);
    console.log('Options:', options);
}

checkOptions();
