const { Client } = require('pg');
const fs = require('fs');
const path = require('path');
require('dotenv').config({ path: '.env.local' });

async function runBlock2Updates() {
    if (!process.env.DATABASE_URL) {
        console.error('❌ DATABASE_URL not found in .env.local');
        process.exit(1);
    }

    const client = new Client({
        connectionString: process.env.DATABASE_URL,
        ssl: { rejectUnauthorized: false }
    });

    try {
        console.log('🔌 Connecting to database...');
        await client.connect();
        console.log('✅ Connected!');

        const scripts = [
            'update_block2_questions.sql',
            'update_block2_options.sql'
        ];

        for (const scriptName of scripts) {
            const scriptPath = path.join(__dirname, scriptName);
            if (fs.existsSync(scriptPath)) {
                console.log(`\n📜 Running ${scriptName}...`);
                const sql = fs.readFileSync(scriptPath, 'utf8');
                await client.query(sql);
                console.log(`✅ ${scriptName} executed successfully!`);
            } else {
                console.error(`⚠️ File not found: ${scriptName}`);
            }
        }

        console.log('\n✨ Block 2 updated successfully!');
        console.log('📊 Updated questions: 7-10 (A, B, C)');
        console.log('🎯 Total: 12 questions in Block 2 (Estética & Apresentação Pessoal)');

    } catch (err) {
        console.error('\n❌ Error executing scripts:', err);
    } finally {
        await client.end();
    }
}

runBlock2Updates();
