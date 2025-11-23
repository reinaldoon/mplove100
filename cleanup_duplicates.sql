-- ============================================
-- LIMPEZA DE DUPLICATAS
-- ============================================

-- Remove opções duplicadas para a mesma pergunta e mesmo código de valor,
-- mantendo apenas a inserção mais antiga (menor ID).

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

-- Caso existam opções sem value_code (improvável, mas possível),
-- remove duplicatas baseadas no texto (label_pt).
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
