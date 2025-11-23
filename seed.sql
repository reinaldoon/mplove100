-- ============================================
-- SEED INICIAL - MPLove100
-- ============================================

-- Inserir Perguntas A (Ideal Partner)
INSERT INTO questions (category_id, block_number, question_order, text_pt, type, question_weight) VALUES
-- Identidade
(1, 1, 1, 'A pessoa dos seus sonhos é homem, mulher ou tanto faz?', 'A', 1.00),
(1, 1, 2, 'Qual faixa etária ideal da pessoa dos seus sonhos?', 'A', 1.00),

-- Finanças - Jantares
(7, 11, 89, 'Quanto a pessoa dos seus sonhos pode investir por mês em jantares fora?', 'A', 1.00),

-- Sexo
(6, 9, 73, 'Com que frequência a pessoa dos seus sonhos gostaria de fazer sexo?', 'A', 1.00);

-- Inserir Perguntas B (Self)
INSERT INTO questions (category_id, block_number, question_order, text_pt, type, related_question_id, question_weight) VALUES
-- Identidade
(1, 1, 101, 'Você é homem, mulher ou outro?', 'B', 1, 1.00),
(1, 1, 102, 'Qual é a sua faixa etária?', 'B', 2, 1.00),

-- Finanças - Jantares
(7, 11, 189, 'Quanto VOCÊ pode investir por mês em jantares fora?', 'B', 3, 1.00),

-- Sexo
(6, 9, 173, 'Com que frequência VOCÊ gosta de fazer sexo?', 'B', 4, 1.00);

-- Inserir Perguntas C (Tolerance)
INSERT INTO questions (category_id, block_number, question_order, text_pt, type, related_question_id, question_weight) VALUES
-- Finanças - Tolerância
(7, 11, 289, 'Você aceita alguém que invista menos do que você em jantares?', 'C', 3, 1.00),

-- Sexo - Tolerância
(6, 9, 273, 'Você aceita alguém com frequência sexual diferente da sua?', 'C', 4, 1.00);

-- ============================================
-- OPÇÕES - Pergunta 1A (Gênero Ideal)
-- ============================================
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
(1, 'Homem', 'MALE', 1),
(1, 'Mulher', 'FEMALE', 2),
(1, 'Tanto faz', 'BOTH', 3);

-- Pergunta 1B (Gênero Self)
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
(5, 'Homem', 'MALE', 1),
(5, 'Mulher', 'FEMALE', 2),
(5, 'Outro', 'OTHER', 3);

-- ============================================
-- OPÇÕES - Pergunta 2A (Idade Ideal)
-- ============================================
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
(2, '18–25', 'AGE_18_25', 1),
(2, '26–32', 'AGE_26_32', 2),
(2, '33–40', 'AGE_33_40', 3),
(2, '41–50', 'AGE_41_50', 4),
(2, '51+', 'AGE_51_PLUS', 5);

-- Pergunta 2B (Idade Self)
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
(6, '18–25', 'AGE_18_25', 1),
(6, '26–32', 'AGE_26_32', 2),
(6, '33–40', 'AGE_33_40', 3),
(6, '41–50', 'AGE_41_50', 4),
(6, '51+', 'AGE_51_PLUS', 5);

-- ============================================
-- OPÇÕES - Pergunta 89A (Finanças Jantares Ideal)
-- ============================================
INSERT INTO question_options (question_id, label_pt, value_code, display_order, tolerance_level) VALUES
(3, 'Até R$200', 'DINING_LOW', 1, 0),
(3, 'R$200–500', 'DINING_MEDIUM', 2, 0),
(3, 'R$500–1.000', 'DINING_HIGH', 3, 0),
(3, 'Acima de R$1.000', 'DINING_VERY_HIGH', 4, 0),
(3, 'Não me importo se a pessoa não puder investir', 'DINING_TOLERANT', 5, 2),
(3, 'Eu posso pagar quando necessário', 'DINING_PROVIDER', 6, 2);

-- Pergunta 89B (Finanças Jantares Self)
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
(7, 'Até R$200', 'DINING_LOW', 1),
(7, 'R$200–500', 'DINING_MEDIUM', 2),
(7, 'R$500–1.000', 'DINING_HIGH', 3),
(7, 'Acima de R$1.000', 'DINING_VERY_HIGH', 4),
(7, 'Não tenho disponibilidade financeira', 'DINING_NONE', 5);

-- Pergunta 89C (Finanças Tolerância)
INSERT INTO question_options (question_id, label_pt, value_code, display_order, tolerance_level) VALUES
(9, 'Sim', 'YES', 1, 2),
(9, 'Depende', 'MAYBE', 2, 1),
(9, 'Não', 'NO', 3, 0);

-- ============================================
-- OPÇÕES - Pergunta 73A (Sexo Frequência Ideal)
-- ============================================
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
(4, '1x por semana', 'SEX_1X_WEEK', 1),
(4, '2–3x por semana', 'SEX_2_3X_WEEK', 2),
(4, '4x ou mais por semana', 'SEX_4X_PLUS_WEEK', 3),
(4, 'Apenas quando rolar naturalmente', 'SEX_NATURAL', 4),
(4, 'Não me importo com a frequência', 'SEX_TOLERANT', 5);

-- Pergunta 73B (Sexo Frequência Self)
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
(8, '1x por semana', 'SEX_1X_WEEK', 1),
(8, '2–3x por semana', 'SEX_2_3X_WEEK', 2),
(8, '4x ou mais por semana', 'SEX_4X_PLUS_WEEK', 3),
(8, 'Apenas quando rolar naturalmente', 'SEX_NATURAL', 4);

-- Pergunta 73C (Sexo Tolerância)
INSERT INTO question_options (question_id, label_pt, value_code, display_order, tolerance_level) VALUES
(10, 'Sim', 'YES', 1, 2),
(10, 'Até certo ponto', 'MAYBE', 2, 1),
(10, 'Não', 'NO', 3, 0);

-- ============================================
-- MATRIZ DE COMPATIBILIDADE (Exemplo: Pergunta 89 - Finanças)
-- ============================================
-- Lógica: Mesma faixa = 100, Adjacent = 75, Provider/Tolerant com qualquer = 100

-- LOW com outros
INSERT INTO option_compatibility (question_id, option_a_id, option_b_id, compatibility_score) VALUES
(3, 14, 26, 100), -- LOW ideal x LOW self = 100
(3, 14, 27, 75),  -- LOW ideal x MEDIUM self = 75
(3, 14, 28, 50),  -- LOW ideal x HIGH self = 50
(3, 14, 29, 25),  -- LOW ideal x VERY_HIGH self = 25
(3, 14, 30, 100); -- LOW ideal x NONE self = 100 (aceita)

-- MEDIUM com outros
INSERT INTO option_compatibility (question_id, option_a_id, option_b_id, compatibility_score) VALUES
(3, 15, 26, 75),  -- MEDIUM ideal x LOW self = 75
(3, 15, 27, 100), -- MEDIUM ideal x MEDIUM self = 100
(3, 15, 28, 75),  -- MEDIUM ideal x HIGH self = 75
(3, 15, 29, 50),  -- MEDIUM ideal x VERY_HIGH self = 50
(3, 15, 30, 50);  -- MEDIUM ideal x NONE self = 50

-- TOLERANT/PROVIDER aceita tudo
INSERT INTO option_compatibility (question_id, option_a_id, option_b_id, compatibility_score) VALUES
(3, 18, 26, 100), -- TOLERANT x LOW = 100
(3, 18, 27, 100), -- TOLERANT x MEDIUM = 100
(3, 18, 28, 100), -- TOLERANT x HIGH = 100
(3, 18, 29, 100), -- TOLERANT x VERY_HIGH = 100
(3, 18, 30, 100), -- TOLERANT x NONE = 100
(3, 19, 26, 100), -- PROVIDER x LOW = 100
(3, 19, 27, 100),
(3, 19, 28, 100),
(3, 19, 29, 100),
(3, 19, 30, 100);

-- ============================================
-- MATRIZ DE COMPATIBILIDADE (Sexo - Pergunta 73)
-- ============================================
INSERT INTO option_compatibility (question_id, option_a_id, option_b_id, compatibility_score) VALUES
(4, 34, 39, 100), -- 1X ideal x 1X self = 100
(4, 34, 40, 75),  -- 1X ideal x 2-3X self = 75
(4, 34, 41, 50),  -- 1X ideal x 4X+ self = 50
(4, 35, 39, 75),  -- 2-3X ideal x 1X self = 75
(4, 35, 40, 100), -- 2-3X ideal x 2-3X self = 100
(4, 35, 41, 75),  -- 2-3X ideal x 4X+ self = 75
(4, 36, 40, 75),  -- 4X+ ideal x 2-3X self = 75
(4, 36, 41, 100), -- 4X+ ideal x 4X+ self = 100
(4, 38, 39, 100), -- TOLERANT x qualquer = 100
(4, 38, 40, 100),
(4, 38, 41, 100),
(4, 38, 42, 100);

-- ============================================
-- FIM DO SEED INICIAL
-- ============================================
