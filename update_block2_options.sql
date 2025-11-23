-- ============================================
-- ATUALIZAÇÃO OPÇÕES BLOCO 2 – Estética & Apresentação Pessoal
-- ============================================

-- Primeiro, deletar as opções antigas do bloco 2 (perguntas 7-10 A/B/C)
DELETE FROM question_options WHERE question_id IN (
    SELECT id FROM questions WHERE question_order IN (7, 8, 9, 10, 107, 108, 109, 110, 207, 208, 209, 210)
);

-- ============================================
-- PERGUNTA 7A – Estilo / Vestimenta
-- ============================================
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 7 AND type = 'A'), 'Essencial', 'ESSENTIAL', 1),
((SELECT id FROM questions WHERE question_order = 7 AND type = 'A'), 'Muito importante', 'VERY_IMPORTANT', 2),
((SELECT id FROM questions WHERE question_order = 7 AND type = 'A'), 'Moderadamente importante', 'MODERATELY_IMPORTANT', 3),
((SELECT id FROM questions WHERE question_order = 7 AND type = 'A'), 'Pouco importante', 'SLIGHTLY_IMPORTANT', 4),
((SELECT id FROM questions WHERE question_order = 7 AND type = 'A'), 'Irrelevante', 'IRRELEVANT', 5);

-- ============================================
-- PERGUNTA 8A – Autocuidado / Higiene / Grooming
-- ============================================
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 8 AND type = 'A'), 'Alto nível de autocuidado', 'HIGH_CARE', 1),
((SELECT id FROM questions WHERE question_order = 8 AND type = 'A'), 'Autocuidado moderado', 'MODERATE_CARE', 2),
((SELECT id FROM questions WHERE question_order = 8 AND type = 'A'), 'Autocuidado básico', 'BASIC_CARE', 3),
((SELECT id FROM questions WHERE question_order = 8 AND type = 'A'), 'Mínimo cuidado (natural)', 'MINIMAL_CARE', 4),
((SELECT id FROM questions WHERE question_order = 8 AND type = 'A'), 'Não tenho preferência', 'NO_PREFERENCE', 5);

-- ============================================
-- PERGUNTA 9A – Corpo / Saúde / Rotina física
-- ============================================
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 9 AND type = 'A'), 'Muito importante', 'VERY_IMPORTANT', 1),
((SELECT id FROM questions WHERE question_order = 9 AND type = 'A'), 'Importante', 'IMPORTANT', 2),
((SELECT id FROM questions WHERE question_order = 9 AND type = 'A'), 'Moderadamente importante', 'MODERATELY_IMPORTANT', 3),
((SELECT id FROM questions WHERE question_order = 9 AND type = 'A'), 'Pouco importante', 'SLIGHTLY_IMPORTANT', 4),
((SELECT id FROM questions WHERE question_order = 9 AND type = 'A'), 'Não importa', 'NOT_IMPORTANT', 5);

-- ============================================
-- PERGUNTA 10A – Atração Física Inicial
-- ============================================
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 10 AND type = 'A'), 'Essencial', 'ESSENTIAL', 1),
((SELECT id FROM questions WHERE question_order = 10 AND type = 'A'), 'Muito importante', 'VERY_IMPORTANT', 2),
((SELECT id FROM questions WHERE question_order = 10 AND type = 'A'), 'Moderadamente importante', 'MODERATELY_IMPORTANT', 3),
((SELECT id FROM questions WHERE question_order = 10 AND type = 'A'), 'Pouco importante', 'SLIGHTLY_IMPORTANT', 4),
((SELECT id FROM questions WHERE question_order = 10 AND type = 'A'), 'Não é importante', 'NOT_IMPORTANT', 5);

-- ============================================
-- PERGUNTA 7B – Seu estilo
-- ============================================
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 107 AND type = 'B'), 'Estilo sofisticado / elegante', 'SOPHISTICATED', 1),
((SELECT id FROM questions WHERE question_order = 107 AND type = 'B'), 'Estilo moderno / urbano', 'MODERN_URBAN', 2),
((SELECT id FROM questions WHERE question_order = 107 AND type = 'B'), 'Estilo simples / casual', 'SIMPLE_CASUAL', 3),
((SELECT id FROM questions WHERE question_order = 107 AND type = 'B'), 'Estilo descontraído / natural', 'RELAXED_NATURAL', 4),
((SELECT id FROM questions WHERE question_order = 107 AND type = 'B'), 'Não tenho um estilo definido', 'NO_DEFINED_STYLE', 5);

-- ============================================
-- PERGUNTA 8B – Seu autocuidado
-- ============================================
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 108 AND type = 'B'), 'Alto nível de autocuidado', 'HIGH_CARE', 1),
((SELECT id FROM questions WHERE question_order = 108 AND type = 'B'), 'Moderado', 'MODERATE', 2),
((SELECT id FROM questions WHERE question_order = 108 AND type = 'B'), 'Básico', 'BASIC', 3),
((SELECT id FROM questions WHERE question_order = 108 AND type = 'B'), 'Mínimo', 'MINIMAL', 4),
((SELECT id FROM questions WHERE question_order = 108 AND type = 'B'), 'Não gosto de rotinas de cuidado', 'NO_CARE_ROUTINE', 5);

-- ============================================
-- PERGUNTA 9B – Seu nível de saúde física
-- ============================================
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 109 AND type = 'B'), 'Academia / exercícios regulares', 'GYM_REGULAR', 1),
((SELECT id FROM questions WHERE question_order = 109 AND type = 'B'), 'Atividade física leve', 'LIGHT_ACTIVITY', 2),
((SELECT id FROM questions WHERE question_order = 109 AND type = 'B'), 'Estilo de vida moderado', 'MODERATE_LIFESTYLE', 3),
((SELECT id FROM questions WHERE question_order = 109 AND type = 'B'), 'Sedentário', 'SEDENTARY', 4),
((SELECT id FROM questions WHERE question_order = 109 AND type = 'B'), 'Não penso nisso', 'DONT_THINK_ABOUT_IT', 5);

-- ============================================
-- PERGUNTA 10B – Sua relação com atração física inicial
-- ============================================
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 110 AND type = 'B'), 'Essencial', 'ESSENTIAL', 1),
((SELECT id FROM questions WHERE question_order = 110 AND type = 'B'), 'Muito importante', 'VERY_IMPORTANT', 2),
((SELECT id FROM questions WHERE question_order = 110 AND type = 'B'), 'Moderadamente importante', 'MODERATELY_IMPORTANT', 3),
((SELECT id FROM questions WHERE question_order = 110 AND type = 'B'), 'Pouco importante', 'SLIGHTLY_IMPORTANT', 4),
((SELECT id FROM questions WHERE question_order = 110 AND type = 'B'), 'Irrelevante', 'IRRELEVANT', 5);

-- ============================================
-- PERGUNTA 7C – Tolerância quanto ao estilo
-- ============================================
INSERT INTO question_options (question_id, label_pt, value_code, display_order, tolerance_level) VALUES
((SELECT id FROM questions WHERE question_order = 207 AND type = 'C'), 'Sim, totalmente', 'TOTALLY_YES', 1, 2),
((SELECT id FROM questions WHERE question_order = 207 AND type = 'C'), 'Sim, se não for muito distante', 'YES_IF_CLOSE', 2, 1),
((SELECT id FROM questions WHERE question_order = 207 AND type = 'C'), 'Depende', 'DEPENDS', 3, 1),
((SELECT id FROM questions WHERE question_order = 207 AND type = 'C'), 'Pouco tolerante', 'LOW_TOLERANCE', 4, 0),
((SELECT id FROM questions WHERE question_order = 207 AND type = 'C'), 'Não aceito', 'NO', 5, 0);

-- ============================================
-- PERGUNTA 8C – Tolerância quanto ao autocuidado
-- ============================================
INSERT INTO question_options (question_id, label_pt, value_code, display_order, tolerance_level) VALUES
((SELECT id FROM questions WHERE question_order = 208 AND type = 'C'), 'Sim', 'YES', 1, 2),
((SELECT id FROM questions WHERE question_order = 208 AND type = 'C'), 'Talvez, depende', 'MAYBE_DEPENDS', 2, 1),
((SELECT id FROM questions WHERE question_order = 208 AND type = 'C'), 'Apenas se for próximo ao meu', 'ONLY_IF_CLOSE', 3, 1),
((SELECT id FROM questions WHERE question_order = 208 AND type = 'C'), 'Pouco tolerante', 'LOW_TOLERANCE', 4, 0),
((SELECT id FROM questions WHERE question_order = 208 AND type = 'C'), 'Não aceito', 'NO', 5, 0);

-- ============================================
-- PERGUNTA 9C – Tolerância quanto à saúde física
-- ============================================
INSERT INTO question_options (question_id, label_pt, value_code, display_order, tolerance_level) VALUES
((SELECT id FROM questions WHERE question_order = 209 AND type = 'C'), 'Totalmente', 'TOTALLY', 1, 2),
((SELECT id FROM questions WHERE question_order = 209 AND type = 'C'), 'Parcialmente', 'PARTIALLY', 2, 1),
((SELECT id FROM questions WHERE question_order = 209 AND type = 'C'), 'Depende', 'DEPENDS', 3, 1),
((SELECT id FROM questions WHERE question_order = 209 AND type = 'C'), 'Pouca tolerância', 'LOW_TOLERANCE', 4, 0),
((SELECT id FROM questions WHERE question_order = 209 AND type = 'C'), 'Não aceito', 'NO', 5, 0);

-- ============================================
-- PERGUNTA 10C – Tolerância quanto à atração inicial
-- ============================================
INSERT INTO question_options (question_id, label_pt, value_code, display_order, tolerance_level) VALUES
((SELECT id FROM questions WHERE question_order = 210 AND type = 'C'), 'Sim', 'YES', 1, 2),
((SELECT id FROM questions WHERE question_order = 210 AND type = 'C'), 'Talvez', 'MAYBE', 2, 1),
((SELECT id FROM questions WHERE question_order = 210 AND type = 'C'), 'Depende da conexão emocional', 'DEPENDS_EMOTIONAL', 3, 1),
((SELECT id FROM questions WHERE question_order = 210 AND type = 'C'), 'Pouco provável', 'UNLIKELY', 4, 0),
((SELECT id FROM questions WHERE question_order = 210 AND type = 'C'), 'Não aceito', 'NO', 5, 0);
