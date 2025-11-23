-- ============================================
-- OPÇÕES BLOCO 2 (Estética & Estilo Visual)
-- ============================================

-- 7. TATUAGEM (7/107)
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 7 AND type = 'A'), 'Sim, adoro', 'YES_LOVE', 1),
((SELECT id FROM questions WHERE question_order = 7 AND type = 'A'), 'Sim, sem problemas', 'YES_OK', 2),
((SELECT id FROM questions WHERE question_order = 7 AND type = 'A'), 'Não gosto muito', 'NO_PREFER', 3),
((SELECT id FROM questions WHERE question_order = 7 AND type = 'A'), 'Não aceito', 'NO', 4);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 107 AND type = 'B'), 'Tenho várias', 'MANY', 1),
((SELECT id FROM questions WHERE question_order = 107 AND type = 'B'), 'Tenho poucas', 'FEW', 2),
((SELECT id FROM questions WHERE question_order = 107 AND type = 'B'), 'Não tenho, mas quero', 'WANT', 3),
((SELECT id FROM questions WHERE question_order = 107 AND type = 'B'), 'Não tenho e não quero', 'NONE', 4);

-- 8. BRINCOS/PIERCINGS (8/108)
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 8 AND type = 'A'), 'Sim, adoro', 'YES_LOVE', 1),
((SELECT id FROM questions WHERE question_order = 8 AND type = 'A'), 'Tanto faz', 'ANY', 2),
((SELECT id FROM questions WHERE question_order = 8 AND type = 'A'), 'Não gosto', 'NO', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 108 AND type = 'B'), 'Uso', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 108 AND type = 'B'), 'Não uso', 'NO', 2);

-- 9. CABELO (9/109)
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 9 AND type = 'A'), 'Curtos', 'SHORT', 1),
((SELECT id FROM questions WHERE question_order = 9 AND type = 'A'), 'Longos', 'LONG', 2),
((SELECT id FROM questions WHERE question_order = 9 AND type = 'A'), 'Tanto faz', 'ANY', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 109 AND type = 'B'), 'Curtos', 'SHORT', 1),
((SELECT id FROM questions WHERE question_order = 109 AND type = 'B'), 'Longos', 'LONG', 2),
((SELECT id FROM questions WHERE question_order = 109 AND type = 'B'), 'Careca/Raspado', 'BALD', 3);

-- 10. BARBA (10/110)
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 10 AND type = 'A'), 'Com barba', 'BEARD', 1),
((SELECT id FROM questions WHERE question_order = 10 AND type = 'A'), 'Sem barba', 'SHAVED', 2),
((SELECT id FROM questions WHERE question_order = 10 AND type = 'A'), 'Tanto faz', 'ANY', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 110 AND type = 'B'), 'Tenho barba', 'BEARD', 1),
((SELECT id FROM questions WHERE question_order = 110 AND type = 'B'), 'Não tenho barba', 'SHAVED', 2),
((SELECT id FROM questions WHERE question_order = 110 AND type = 'B'), 'Não se aplica', 'NA', 3);

-- 11. UNHAS (11/111)
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 11 AND type = 'A'), 'Naturais', 'NATURAL', 1),
((SELECT id FROM questions WHERE question_order = 11 AND type = 'A'), 'Alongadas/Pintadas', 'STYLED', 2),
((SELECT id FROM questions WHERE question_order = 11 AND type = 'A'), 'Tanto faz', 'ANY', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 111 AND type = 'B'), 'Naturais', 'NATURAL', 1),
((SELECT id FROM questions WHERE question_order = 111 AND type = 'B'), 'Alongadas/Pintadas', 'STYLED', 2),
((SELECT id FROM questions WHERE question_order = 111 AND type = 'B'), 'Não se aplica', 'NA', 3);


-- ============================================
-- OPÇÕES BLOCO 3 (Histórico de Vida)
-- ============================================

-- 12. ESTADO CIVIL (12/112)
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 12 AND type = 'A'), 'Solteiro(a) (nunca casou)', 'SINGLE', 1),
((SELECT id FROM questions WHERE question_order = 12 AND type = 'A'), 'Divorciado(a)', 'DIVORCED', 2),
((SELECT id FROM questions WHERE question_order = 12 AND type = 'A'), 'Viúvo(a)', 'WIDOWED', 3),
((SELECT id FROM questions WHERE question_order = 12 AND type = 'A'), 'Tanto faz', 'ANY', 4);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 112 AND type = 'B'), 'Solteiro(a)', 'SINGLE', 1),
((SELECT id FROM questions WHERE question_order = 112 AND type = 'B'), 'Divorciado(a)', 'DIVORCED', 2),
((SELECT id FROM questions WHERE question_order = 112 AND type = 'B'), 'Viúvo(a)', 'WIDOWED', 3);

-- 13. TEM FILHOS (13/113)
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 13 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 13 AND type = 'A'), 'Não', 'NO', 2),
((SELECT id FROM questions WHERE question_order = 13 AND type = 'A'), 'Tanto faz', 'ANY', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 113 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 113 AND type = 'B'), 'Não', 'NO', 2);

-- 14. QUER FILHOS (14/114)
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 14 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 14 AND type = 'A'), 'Não', 'NO', 2),
((SELECT id FROM questions WHERE question_order = 14 AND type = 'A'), 'Talvez', 'MAYBE', 3),
((SELECT id FROM questions WHERE question_order = 14 AND type = 'A'), 'Tanto faz', 'ANY', 4);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 114 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 114 AND type = 'B'), 'Não', 'NO', 2),
((SELECT id FROM questions WHERE question_order = 114 AND type = 'B'), 'Talvez', 'MAYBE', 3);

-- 15. ACEITA DIVORCIADOS (15/115)
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 15 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 15 AND type = 'A'), 'Não', 'NO', 2);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 115 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 115 AND type = 'B'), 'Não', 'NO', 2);

-- 16. ACEITA QUEM TEM FILHOS (16/116)
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 16 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 16 AND type = 'A'), 'Não', 'NO', 2);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 116 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 116 AND type = 'B'), 'Não', 'NO', 2);
