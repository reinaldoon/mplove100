-- ============================================
-- SCRIPT DE CORREÇÃO COMPLETA (LIMPEZA + SEED FINAL)
-- ============================================

-- 1. LIMPEZA DE DUPLICATAS
-- Remove opções duplicadas mantendo apenas a primeira inserção
DELETE FROM question_options
WHERE id IN (
    SELECT id
    FROM (
        SELECT id,
               ROW_NUMBER() OVER (PARTITION BY question_id, value_code ORDER BY id ASC) as rnum
        FROM question_options
    ) t
    WHERE t.rnum > 1
);

DELETE FROM question_options
WHERE id IN (
    SELECT id
    FROM (
        SELECT id,
               ROW_NUMBER() OVER (PARTITION BY question_id, label_pt ORDER BY id ASC) as rnum
        FROM question_options
        WHERE value_code IS NULL
    ) t
    WHERE t.rnum > 1
);

-- 2. INSERÇÃO DAS OPÇÕES RESTANTES (92+ e 192+)

-- 92. VIAJAR SIMPLES (92/192)
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 92 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 92 AND type = 'A'), 'Não', 'NO', 2),
((SELECT id FROM questions WHERE question_order = 92 AND type = 'A'), 'Depende', 'MAYBE', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 192 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 192 AND type = 'B'), 'Não', 'NO', 2),
((SELECT id FROM questions WHERE question_order = 192 AND type = 'B'), 'Depende', 'MAYBE', 3);

-- 93. PRIORIDADES ALINHADAS (93/193)
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 93 AND type = 'A'), 'Essencial', 'ESSENTIAL', 1),
((SELECT id FROM questions WHERE question_order = 93 AND type = 'A'), 'Importante', 'IMPORTANT', 2),
((SELECT id FROM questions WHERE question_order = 93 AND type = 'A'), 'Tanto faz', 'ANY', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 193 AND type = 'B'), 'Sim, estão claras', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 193 AND type = 'B'), 'Ainda estou definindo', 'MAYBE', 2);

-- 95. BUSCA PARCERIA (95/195)
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 95 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 95 AND type = 'A'), 'Não', 'NO', 2);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 195 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 195 AND type = 'B'), 'Não', 'NO', 2);

-- 96. FUTURO JUNTOS (96/196)
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 96 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 96 AND type = 'A'), 'Não', 'NO', 2);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 196 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 196 AND type = 'B'), 'Não', 'NO', 2);

-- 97. RESOLVER PROBLEMAS (97/197)
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 97 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 97 AND type = 'A'), 'Não', 'NO', 2);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 197 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 197 AND type = 'B'), 'Tenho dificuldade', 'NO', 2);

-- 98. PAZ NO RELACIONAMENTO (98/198)
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 98 AND type = 'A'), 'Essencial', 'ESSENTIAL', 1),
((SELECT id FROM questions WHERE question_order = 98 AND type = 'A'), 'Importante', 'IMPORTANT', 2);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 198 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 198 AND type = 'B'), 'Às vezes gosto de drama', 'NO', 2);

-- 99. ESFORÇO (99/199)
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 99 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 99 AND type = 'A'), 'Não', 'NO', 2);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 199 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 199 AND type = 'B'), 'Não', 'NO', 2);

-- 100. AMOR CONSTRUÇÃO (100/200)
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 100 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 100 AND type = 'A'), 'Não', 'NO', 2);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 200 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 200 AND type = 'B'), 'Não', 'NO', 2);
