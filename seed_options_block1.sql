-- ============================================
-- OPÇÕES BLOCO 1 (Identidade & Básico)
-- ============================================

-- 1. GÊNERO (1/101)
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 1 AND type = 'A'), 'Homem', 'MALE', 1),
((SELECT id FROM questions WHERE question_order = 1 AND type = 'A'), 'Mulher', 'FEMALE', 2),
((SELECT id FROM questions WHERE question_order = 1 AND type = 'A'), 'Tanto faz', 'ANY', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 101 AND type = 'B'), 'Homem', 'MALE', 1),
((SELECT id FROM questions WHERE question_order = 101 AND type = 'B'), 'Mulher', 'FEMALE', 2),
((SELECT id FROM questions WHERE question_order = 101 AND type = 'B'), 'Outro', 'OTHER', 3);

-- 2. IDADE (2/102)
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 2 AND type = 'A'), '18-25 anos', '18_25', 1),
((SELECT id FROM questions WHERE question_order = 2 AND type = 'A'), '26-35 anos', '26_35', 2),
((SELECT id FROM questions WHERE question_order = 2 AND type = 'A'), '36-45 anos', '36_45', 3),
((SELECT id FROM questions WHERE question_order = 2 AND type = 'A'), '46+ anos', '46_PLUS', 4),
((SELECT id FROM questions WHERE question_order = 2 AND type = 'A'), 'Não tenho preferência', 'ANY', 5);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 102 AND type = 'B'), '18-25 anos', '18_25', 1),
((SELECT id FROM questions WHERE question_order = 102 AND type = 'B'), '26-35 anos', '26_35', 2),
((SELECT id FROM questions WHERE question_order = 102 AND type = 'B'), '36-45 anos', '36_45', 3),
((SELECT id FROM questions WHERE question_order = 102 AND type = 'B'), '46+ anos', '46_PLUS', 4);

-- 3. ALTURA (3/103)
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 3 AND type = 'A'), 'Baixa (< 1.60m)', 'SHORT', 1),
((SELECT id FROM questions WHERE question_order = 3 AND type = 'A'), 'Média (1.60m - 1.75m)', 'MEDIUM', 2),
((SELECT id FROM questions WHERE question_order = 3 AND type = 'A'), 'Alta (> 1.75m)', 'TALL', 3),
((SELECT id FROM questions WHERE question_order = 3 AND type = 'A'), 'Não tenho preferência', 'ANY', 4);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 103 AND type = 'B'), 'Baixa (< 1.60m)', 'SHORT', 1),
((SELECT id FROM questions WHERE question_order = 103 AND type = 'B'), 'Média (1.60m - 1.75m)', 'MEDIUM', 2),
((SELECT id FROM questions WHERE question_order = 103 AND type = 'B'), 'Alta (> 1.75m)', 'TALL', 3);

-- 4. BIOTIPO (4/104)
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 4 AND type = 'A'), 'Magro', 'SLIM', 1),
((SELECT id FROM questions WHERE question_order = 4 AND type = 'A'), 'Atlético', 'ATHLETIC', 2),
((SELECT id FROM questions WHERE question_order = 4 AND type = 'A'), 'Médio', 'AVERAGE', 3),
((SELECT id FROM questions WHERE question_order = 4 AND type = 'A'), 'Plus Size', 'PLUS', 4),
((SELECT id FROM questions WHERE question_order = 4 AND type = 'A'), 'Não tenho preferência', 'ANY', 5);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 104 AND type = 'B'), 'Magro', 'SLIM', 1),
((SELECT id FROM questions WHERE question_order = 104 AND type = 'B'), 'Atlético', 'ATHLETIC', 2),
((SELECT id FROM questions WHERE question_order = 104 AND type = 'B'), 'Médio', 'AVERAGE', 3),
((SELECT id FROM questions WHERE question_order = 104 AND type = 'B'), 'Plus Size', 'PLUS', 4);

-- 5. ETNIA (5/105)
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 5 AND type = 'A'), 'Branca', 'WHITE', 1),
((SELECT id FROM questions WHERE question_order = 5 AND type = 'A'), 'Negra', 'BLACK', 2),
((SELECT id FROM questions WHERE question_order = 5 AND type = 'A'), 'Asiática', 'ASIAN', 3),
((SELECT id FROM questions WHERE question_order = 5 AND type = 'A'), 'Latina', 'LATINO', 4),
((SELECT id FROM questions WHERE question_order = 5 AND type = 'A'), 'Não tenho preferência', 'ANY', 5);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 105 AND type = 'B'), 'Branca', 'WHITE', 1),
((SELECT id FROM questions WHERE question_order = 105 AND type = 'B'), 'Negra', 'BLACK', 2),
((SELECT id FROM questions WHERE question_order = 105 AND type = 'B'), 'Asiática', 'ASIAN', 3),
((SELECT id FROM questions WHERE question_order = 105 AND type = 'B'), 'Latina', 'LATINO', 4),
((SELECT id FROM questions WHERE question_order = 105 AND type = 'B'), 'Outra', 'OTHER', 5);

-- 6. IMPORTÂNCIA DA APARÊNCIA (6/106)
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 6 AND type = 'A'), 'Muito importante', 'VERY_IMPORTANT', 1),
((SELECT id FROM questions WHERE question_order = 6 AND type = 'A'), 'Importante', 'IMPORTANT', 2),
((SELECT id FROM questions WHERE question_order = 6 AND type = 'A'), 'Pouco importante', 'NOT_IMPORTANT', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 106 AND type = 'B'), 'Muito vaidoso(a)', 'VERY_VAIN', 1),
((SELECT id FROM questions WHERE question_order = 106 AND type = 'B'), 'Moderado', 'MODERATE', 2),
((SELECT id FROM questions WHERE question_order = 106 AND type = 'B'), 'Despojado', 'CASUAL', 3);
