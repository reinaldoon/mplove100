const { createClient } = require('@supabase/supabase-js');

const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
const supabaseAnonKey = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseAnonKey) {
    console.error('Missing env vars. Please make sure .env.local exists and has values.');
    process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseAnonKey);

async function diagnose() {
    console.log('--- DIAGNOSTIC START ---');

    // 1. Check if we can read questions (Basic connectivity)
    const { data: q7, error: qError } = await supabase
        .from('questions')
        .select('id, text_pt')
        .eq('question_order', 7)
        .eq('type', 'A')
        .single();

    if (qError) {
        console.error('❌ Error fetching Question 7:', qError);
    } else {
        console.log('✅ Question 7 found:', q7.id);
    }

    // 2. Check if options exist for Question 7
    if (q7) {
        const { data: options, error: oError } = await supabase
            .from('question_options')
            .select('id, label_pt')
            .eq('question_id', q7.id);

        if (oError) {
            console.error('❌ Error fetching options for Q7:', oError);
        } else if (options.length === 0) {
            console.error('❌ NO OPTIONS found for Question 7. Did you run seed_options_block2_3.sql?');
        } else {
            console.log(`✅ Found ${options.length} options for Question 7.`);
            console.log('Sample Option ID:', options[0].id);
        }
    }

    // 3. Check RLS / Write Permissions on user_answers
    // We can't easily test RLS as anon without a user token, but we can check if the table exists and is public.
    // Instead, we'll just try to select from it (should return empty or error if RLS blocks).
    const { error: uaError } = await supabase.from('user_answers').select('id').limit(1);

    if (uaError) {
        console.error('⚠️ Potential Issue with user_answers table:', uaError);
    } else {
        console.log('✅ user_answers table is readable (public or policy allows).');
    }

    console.log('--- DIAGNOSTIC END ---');
}

diagnose();
