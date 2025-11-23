-- ============================================
-- ATUALIZAÇÃO BLOCO 2 – Estética & Apresentação Pessoal
-- ============================================

-- Atualizar textos das perguntas A (7-10)
UPDATE questions SET text_pt = 'Quão importante é para você que o seu parceiro tenha um estilo de vestir alinhado ao seu?' WHERE question_order = 7 AND type = 'A';
UPDATE questions SET text_pt = 'Qual o nível de autocuidado que você prefere em um parceiro?' WHERE question_order = 8 AND type = 'A';
UPDATE questions SET text_pt = 'Quão importante é para você que o parceiro cuide do corpo e da saúde física?' WHERE question_order = 9 AND type = 'A';
UPDATE questions SET text_pt = 'Quão importante é sentir atração física imediata pela pessoa?' WHERE question_order = 10 AND type = 'A';

-- Atualizar textos das perguntas B (107-110)
UPDATE questions SET text_pt = 'Como você descreve o seu próprio estilo de vestir?' WHERE question_order = 107 AND type = 'B';
UPDATE questions SET text_pt = 'Como você avalia seu nível de autocuidado diário?' WHERE question_order = 108 AND type = 'B';
UPDATE questions SET text_pt = 'Como você descreveria sua rotina de saúde e cuidados com o corpo?' WHERE question_order = 109 AND type = 'B';
UPDATE questions SET text_pt = 'Para você, sentir atração inicial é…' WHERE question_order = 110 AND type = 'B';

-- Atualizar textos das perguntas C (207-210)
UPDATE questions SET text_pt = 'Você aceitaria alguém com um estilo de vestir diferente do seu?' WHERE question_order = 207 AND type = 'C';
UPDATE questions SET text_pt = 'Você aceitaria alguém com nível de autocuidado diferente do seu?' WHERE question_order = 208 AND type = 'C';
UPDATE questions SET text_pt = 'Você aceitaria um parceiro com rotina de atividade física diferente da sua?' WHERE question_order = 209 AND type = 'C';
UPDATE questions SET text_pt = 'Você aceitaria alguém mesmo que não haja atração física imediata?' WHERE question_order = 210 AND type = 'C';
