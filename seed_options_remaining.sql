-- ============================================
-- OPÇÕES RESTANTES (Blocos 4 a 10)
-- ============================================

-- BLOCO 4 – PERSONALIDADE (17–26)
-- 17. EXTROVERTIDO/INTROVERTIDO
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 17 AND type = 'A'), 'Extrovertida', 'EXTROVERT', 1),
((SELECT id FROM questions WHERE question_order = 17 AND type = 'A'), 'Introvertida', 'INTROVERT', 2),
((SELECT id FROM questions WHERE question_order = 17 AND type = 'A'), 'Equilibrada', 'BALANCED', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 117 AND type = 'B'), 'Extrovertido', 'EXTROVERT', 1),
((SELECT id FROM questions WHERE question_order = 117 AND type = 'B'), 'Introvertido', 'INTROVERT', 2),
((SELECT id FROM questions WHERE question_order = 117 AND type = 'B'), 'Equilibrado', 'BALANCED', 3);

-- 18. EMOCIONAL/RACIONAL
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 18 AND type = 'A'), 'Mais Emocional', 'EMOTIONAL', 1),
((SELECT id FROM questions WHERE question_order = 18 AND type = 'A'), 'Mais Racional', 'RATIONAL', 2),
((SELECT id FROM questions WHERE question_order = 18 AND type = 'A'), 'Equilibrada', 'BALANCED', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 118 AND type = 'B'), 'Mais Emocional', 'EMOTIONAL', 1),
((SELECT id FROM questions WHERE question_order = 118 AND type = 'B'), 'Mais Racional', 'RATIONAL', 2),
((SELECT id FROM questions WHERE question_order = 118 AND type = 'B'), 'Equilibrado', 'BALANCED', 3);

-- 19. CALMA/INTENSA
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 19 AND type = 'A'), 'Mais Calma', 'CALM', 1),
((SELECT id FROM questions WHERE question_order = 19 AND type = 'A'), 'Mais Intensa', 'INTENSE', 2);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 119 AND type = 'B'), 'Mais Calmo', 'CALM', 1),
((SELECT id FROM questions WHERE question_order = 119 AND type = 'B'), 'Mais Intenso', 'INTENSE', 2);

-- 20. ROMÂNTICA
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 20 AND type = 'A'), 'Sim, muito', 'VERY', 1),
((SELECT id FROM questions WHERE question_order = 20 AND type = 'A'), 'Moderadamente', 'MODERATE', 2),
((SELECT id FROM questions WHERE question_order = 20 AND type = 'A'), 'Pouco', 'LITTLE', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 120 AND type = 'B'), 'Sim, muito', 'VERY', 1),
((SELECT id FROM questions WHERE question_order = 120 AND type = 'B'), 'Moderadamente', 'MODERATE', 2),
((SELECT id FROM questions WHERE question_order = 120 AND type = 'B'), 'Pouco', 'LITTLE', 3);

-- 21. CARINHO
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 21 AND type = 'A'), 'Sim, gosto de grude', 'CLINGY', 1),
((SELECT id FROM questions WHERE question_order = 21 AND type = 'A'), 'Gosto, mas com espaço', 'BALANCED', 2),
((SELECT id FROM questions WHERE question_order = 21 AND type = 'A'), 'Não gosto muito', 'DISTANT', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 121 AND type = 'B'), 'Sou grudento', 'CLINGY', 1),
((SELECT id FROM questions WHERE question_order = 121 AND type = 'B'), 'Sou carinhoso na medida', 'BALANCED', 2),
((SELECT id FROM questions WHERE question_order = 121 AND type = 'B'), 'Sou mais frio', 'DISTANT', 3);

-- 22. CONVERSA
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 22 AND type = 'A'), 'Sim, fala bastante', 'TALKATIVE', 1),
((SELECT id FROM questions WHERE question_order = 22 AND type = 'A'), 'Moderada', 'MODERATE', 2),
((SELECT id FROM questions WHERE question_order = 22 AND type = 'A'), 'Mais calada', 'QUIET', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 122 AND type = 'B'), 'Falo bastante', 'TALKATIVE', 1),
((SELECT id FROM questions WHERE question_order = 122 AND type = 'B'), 'Moderado', 'MODERATE', 2),
((SELECT id FROM questions WHERE question_order = 122 AND type = 'B'), 'Sou mais calado', 'QUIET', 3);

-- 23. GENEROSA
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 23 AND type = 'A'), 'Sim, muito', 'VERY', 1),
((SELECT id FROM questions WHERE question_order = 23 AND type = 'A'), 'Normal', 'NORMAL', 2),
((SELECT id FROM questions WHERE question_order = 23 AND type = 'A'), 'Pouco', 'LITTLE', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 123 AND type = 'B'), 'Sim, muito', 'VERY', 1),
((SELECT id FROM questions WHERE question_order = 123 AND type = 'B'), 'Normal', 'NORMAL', 2),
((SELECT id FROM questions WHERE question_order = 123 AND type = 'B'), 'Pouco', 'LITTLE', 3);

-- 24. VAIDOSA
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 24 AND type = 'A'), 'Sim, muito', 'VERY', 1),
((SELECT id FROM questions WHERE question_order = 24 AND type = 'A'), 'Normal', 'NORMAL', 2),
((SELECT id FROM questions WHERE question_order = 24 AND type = 'A'), 'Pouco', 'LITTLE', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 124 AND type = 'B'), 'Sim, muito', 'VERY', 1),
((SELECT id FROM questions WHERE question_order = 124 AND type = 'B'), 'Normal', 'NORMAL', 2),
((SELECT id FROM questions WHERE question_order = 124 AND type = 'B'), 'Pouco', 'LITTLE', 3);

-- 25. ORGANIZADA
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 25 AND type = 'A'), 'Muito organizada', 'VERY', 1),
((SELECT id FROM questions WHERE question_order = 25 AND type = 'A'), 'Normal', 'NORMAL', 2),
((SELECT id FROM questions WHERE question_order = 25 AND type = 'A'), 'Bagunceira', 'MESSY', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 125 AND type = 'B'), 'Muito organizado', 'VERY', 1),
((SELECT id FROM questions WHERE question_order = 125 AND type = 'B'), 'Normal', 'NORMAL', 2),
((SELECT id FROM questions WHERE question_order = 125 AND type = 'B'), 'Bagunceiro', 'MESSY', 3);

-- 26. HIGIENE
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 26 AND type = 'A'), 'Essencial', 'ESSENTIAL', 1),
((SELECT id FROM questions WHERE question_order = 26 AND type = 'A'), 'Importante', 'IMPORTANT', 2);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 126 AND type = 'B'), 'Me cuido muito', 'VERY', 1),
((SELECT id FROM questions WHERE question_order = 126 AND type = 'B'), 'Normal', 'NORMAL', 2);


-- BLOCO 5 – ESTILO DE VIDA (27–41)
-- 27. ACADEMIA
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 27 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 27 AND type = 'A'), 'Não', 'NO', 2),
((SELECT id FROM questions WHERE question_order = 27 AND type = 'A'), 'Tanto faz', 'ANY', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 127 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 127 AND type = 'B'), 'Não', 'NO', 2);

-- 28. DIETA
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 28 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 28 AND type = 'A'), 'Não', 'NO', 2),
((SELECT id FROM questions WHERE question_order = 28 AND type = 'A'), 'Tanto faz', 'ANY', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 128 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 128 AND type = 'B'), 'Não', 'NO', 2);

-- 29. ÁLCOOL
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 29 AND type = 'A'), 'Sim, socialmente', 'YES_SOCIAL', 1),
((SELECT id FROM questions WHERE question_order = 29 AND type = 'A'), 'Sim, frequentemente', 'YES_OFTEN', 2),
((SELECT id FROM questions WHERE question_order = 29 AND type = 'A'), 'Não', 'NO', 3),
((SELECT id FROM questions WHERE question_order = 29 AND type = 'A'), 'Tanto faz', 'ANY', 4);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 129 AND type = 'B'), 'Sim, socialmente', 'YES_SOCIAL', 1),
((SELECT id FROM questions WHERE question_order = 129 AND type = 'B'), 'Sim, frequentemente', 'YES_OFTEN', 2),
((SELECT id FROM questions WHERE question_order = 129 AND type = 'B'), 'Não', 'NO', 3);

-- 30. CIGARRO
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 30 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 30 AND type = 'A'), 'Não', 'NO', 2),
((SELECT id FROM questions WHERE question_order = 30 AND type = 'A'), 'Tanto faz', 'ANY', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 130 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 130 AND type = 'B'), 'Não', 'NO', 2);

-- 31. DROGAS
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 31 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 31 AND type = 'A'), 'Não', 'NO', 2),
((SELECT id FROM questions WHERE question_order = 31 AND type = 'A'), 'Tanto faz', 'ANY', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 131 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 131 AND type = 'B'), 'Não', 'NO', 2);

-- 32. QUAIS DROGAS
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 32 AND type = 'A'), 'Maconha', 'WEED', 1),
((SELECT id FROM questions WHERE question_order = 32 AND type = 'A'), 'Outras', 'OTHER', 2),
((SELECT id FROM questions WHERE question_order = 32 AND type = 'A'), 'Nenhuma', 'NONE', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 132 AND type = 'B'), 'Maconha', 'WEED', 1),
((SELECT id FROM questions WHERE question_order = 132 AND type = 'B'), 'Outras', 'OTHER', 2),
((SELECT id FROM questions WHERE question_order = 132 AND type = 'B'), 'Nenhuma', 'NONE', 3);

-- 33. VIAGENS
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 33 AND type = 'A'), 'Sim, muito', 'YES_VERY', 1),
((SELECT id FROM questions WHERE question_order = 33 AND type = 'A'), 'Sim, às vezes', 'YES_SOMETIMES', 2),
((SELECT id FROM questions WHERE question_order = 33 AND type = 'A'), 'Não gosto', 'NO', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 133 AND type = 'B'), 'Sim, muito', 'YES_VERY', 1),
((SELECT id FROM questions WHERE question_order = 133 AND type = 'B'), 'Sim, às vezes', 'YES_SOMETIMES', 2),
((SELECT id FROM questions WHERE question_order = 133 AND type = 'B'), 'Não gosto', 'NO', 3);

-- 34. PRAIA OU CIDADE
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 34 AND type = 'A'), 'Praia', 'BEACH', 1),
((SELECT id FROM questions WHERE question_order = 34 AND type = 'A'), 'Cidade', 'CITY', 2),
((SELECT id FROM questions WHERE question_order = 34 AND type = 'A'), 'Campo', 'COUNTRY', 3),
((SELECT id FROM questions WHERE question_order = 34 AND type = 'A'), 'Tanto faz', 'ANY', 4);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 134 AND type = 'B'), 'Praia', 'BEACH', 1),
((SELECT id FROM questions WHERE question_order = 134 AND type = 'B'), 'Cidade', 'CITY', 2),
((SELECT id FROM questions WHERE question_order = 134 AND type = 'B'), 'Campo', 'COUNTRY', 3);

-- 35. NATUREZA
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 35 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 35 AND type = 'A'), 'Não', 'NO', 2);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 135 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 135 AND type = 'B'), 'Não', 'NO', 2);

-- 36. CAMINHADAS
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 36 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 36 AND type = 'A'), 'Não', 'NO', 2);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 136 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 136 AND type = 'B'), 'Não', 'NO', 2);

-- 37. FICAR EM CASA
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 37 AND type = 'A'), 'Sim, caseira', 'HOMEBODY', 1),
((SELECT id FROM questions WHERE question_order = 37 AND type = 'A'), 'Não, gosta de sair', 'OUTGOING', 2),
((SELECT id FROM questions WHERE question_order = 37 AND type = 'A'), 'Equilibrada', 'BALANCED', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 137 AND type = 'B'), 'Sim, caseiro', 'HOMEBODY', 1),
((SELECT id FROM questions WHERE question_order = 137 AND type = 'B'), 'Não, gosto de sair', 'OUTGOING', 2),
((SELECT id FROM questions WHERE question_order = 137 AND type = 'B'), 'Equilibrado', 'BALANCED', 3);

-- 38. FESTAS
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 38 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 38 AND type = 'A'), 'Não', 'NO', 2);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 138 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 138 AND type = 'B'), 'Não', 'NO', 2);

-- 39. RESTAURANTES
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 39 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 39 AND type = 'A'), 'Não', 'NO', 2);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 139 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 139 AND type = 'B'), 'Não', 'NO', 2);

-- 40. ACORDA CEDO
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 40 AND type = 'A'), 'Cedo', 'EARLY', 1),
((SELECT id FROM questions WHERE question_order = 40 AND type = 'A'), 'Tarde', 'LATE', 2),
((SELECT id FROM questions WHERE question_order = 40 AND type = 'A'), 'Tanto faz', 'ANY', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 140 AND type = 'B'), 'Cedo', 'EARLY', 1),
((SELECT id FROM questions WHERE question_order = 140 AND type = 'B'), 'Tarde', 'LATE', 2);

-- 41. DORME CEDO
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 41 AND type = 'A'), 'Cedo', 'EARLY', 1),
((SELECT id FROM questions WHERE question_order = 41 AND type = 'A'), 'Tarde', 'LATE', 2),
((SELECT id FROM questions WHERE question_order = 41 AND type = 'A'), 'Tanto faz', 'ANY', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 141 AND type = 'B'), 'Cedo', 'EARLY', 1),
((SELECT id FROM questions WHERE question_order = 141 AND type = 'B'), 'Tarde', 'LATE', 2);

-- BLOCO 6 – ROTINA & HÁBITOS (42–55)
-- 42. COZINHAR
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 42 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 42 AND type = 'A'), 'Não', 'NO', 2),
((SELECT id FROM questions WHERE question_order = 42 AND type = 'A'), 'Tanto faz', 'ANY', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 142 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 142 AND type = 'B'), 'Não', 'NO', 2);

-- 43. COMER FORA
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 43 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 43 AND type = 'A'), 'Não', 'NO', 2),
((SELECT id FROM questions WHERE question_order = 43 AND type = 'A'), 'Tanto faz', 'ANY', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 143 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 143 AND type = 'B'), 'Não', 'NO', 2);

-- 44. FILMES/SÉRIES
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 44 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 44 AND type = 'A'), 'Não', 'NO', 2),
((SELECT id FROM questions WHERE question_order = 44 AND type = 'A'), 'Tanto faz', 'ANY', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 144 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 144 AND type = 'B'), 'Não', 'NO', 2);

-- 45. HOBBIES
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 45 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 45 AND type = 'A'), 'Não', 'NO', 2),
((SELECT id FROM questions WHERE question_order = 45 AND type = 'A'), 'Tanto faz', 'ANY', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 145 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 145 AND type = 'B'), 'Não', 'NO', 2);

-- 46. LER
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 46 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 46 AND type = 'A'), 'Não', 'NO', 2),
((SELECT id FROM questions WHERE question_order = 46 AND type = 'A'), 'Tanto faz', 'ANY', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 146 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 146 AND type = 'B'), 'Não', 'NO', 2);

-- 47. ESTILO MUSICAL
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 47 AND type = 'A'), 'Rock', 'ROCK', 1),
((SELECT id FROM questions WHERE question_order = 47 AND type = 'A'), 'Pop', 'POP', 2),
((SELECT id FROM questions WHERE question_order = 47 AND type = 'A'), 'Sertanejo', 'SERTANEJO', 3),
((SELECT id FROM questions WHERE question_order = 47 AND type = 'A'), 'Funk', 'FUNK', 4),
((SELECT id FROM questions WHERE question_order = 47 AND type = 'A'), 'Eletrônica', 'ELECTRONIC', 5),
((SELECT id FROM questions WHERE question_order = 47 AND type = 'A'), 'Tanto faz', 'ANY', 6);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 147 AND type = 'B'), 'Rock', 'ROCK', 1),
((SELECT id FROM questions WHERE question_order = 147 AND type = 'B'), 'Pop', 'POP', 2),
((SELECT id FROM questions WHERE question_order = 147 AND type = 'B'), 'Sertanejo', 'SERTANEJO', 3),
((SELECT id FROM questions WHERE question_order = 147 AND type = 'B'), 'Funk', 'FUNK', 4),
((SELECT id FROM questions WHERE question_order = 147 AND type = 'B'), 'Eletrônica', 'ELECTRONIC', 5),
((SELECT id FROM questions WHERE question_order = 147 AND type = 'B'), 'Eclético', 'ECLECTIC', 6);

-- 48. ESPORTES
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 48 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 48 AND type = 'A'), 'Não', 'NO', 2),
((SELECT id FROM questions WHERE question_order = 48 AND type = 'A'), 'Tanto faz', 'ANY', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 148 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 148 AND type = 'B'), 'Não', 'NO', 2);

-- 49. DIRIGIR
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 49 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 49 AND type = 'A'), 'Não', 'NO', 2),
((SELECT id FROM questions WHERE question_order = 49 AND type = 'A'), 'Tanto faz', 'ANY', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 149 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 149 AND type = 'B'), 'Não', 'NO', 2);

-- 50. CARRO
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 50 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 50 AND type = 'A'), 'Não', 'NO', 2),
((SELECT id FROM questions WHERE question_order = 50 AND type = 'A'), 'Tanto faz', 'ANY', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 150 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 150 AND type = 'B'), 'Não', 'NO', 2);

-- 51. MOTO
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 51 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 51 AND type = 'A'), 'Não', 'NO', 2),
((SELECT id FROM questions WHERE question_order = 51 AND type = 'A'), 'Tanto faz', 'ANY', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 151 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 151 AND type = 'B'), 'Não', 'NO', 2);

-- 52. CASA PRÓPRIA
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 52 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 52 AND type = 'A'), 'Não', 'NO', 2),
((SELECT id FROM questions WHERE question_order = 52 AND type = 'A'), 'Tanto faz', 'ANY', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 152 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 152 AND type = 'B'), 'Não', 'NO', 2);

-- 53. DIVIDIR CASA
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 53 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 53 AND type = 'A'), 'Não', 'NO', 2),
((SELECT id FROM questions WHERE question_order = 53 AND type = 'A'), 'Tanto faz', 'ANY', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 153 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 153 AND type = 'B'), 'Não', 'NO', 2);

-- 54. ACEITA PETS
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 54 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 54 AND type = 'A'), 'Não', 'NO', 2);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 154 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 154 AND type = 'B'), 'Não', 'NO', 2);

-- 55. PETS DENTRO DE CASA
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 55 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 55 AND type = 'A'), 'Não', 'NO', 2);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 155 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 155 AND type = 'B'), 'Não', 'NO', 2);

-- BLOCO 7 – CARÁTER & VALORES (56–64)
-- 56. FAMÍLIA
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 56 AND type = 'A'), 'Sim, muito', 'VERY', 1),
((SELECT id FROM questions WHERE question_order = 56 AND type = 'A'), 'Normal', 'NORMAL', 2),
((SELECT id FROM questions WHERE question_order = 56 AND type = 'A'), 'Não ligo', 'LOW', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 156 AND type = 'B'), 'Sim, muito', 'VERY', 1),
((SELECT id FROM questions WHERE question_order = 156 AND type = 'B'), 'Normal', 'NORMAL', 2),
((SELECT id FROM questions WHERE question_order = 156 AND type = 'B'), 'Não ligo', 'LOW', 3);

-- 57. FIDELIDADE
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 57 AND type = 'A'), 'Essencial', 'ESSENTIAL', 1),
((SELECT id FROM questions WHERE question_order = 57 AND type = 'A'), 'Importante', 'IMPORTANT', 2);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 157 AND type = 'B'), 'Sou fiel', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 157 AND type = 'B'), 'Tenho dificuldades', 'NO', 2);

-- 58. RELIGIÃO ESPECÍFICA
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 58 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 58 AND type = 'A'), 'Não', 'NO', 2);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 158 AND type = 'B'), 'Tenho', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 158 AND type = 'B'), 'Não tenho', 'NO', 2);

-- 59. ACREDITA EM DEUS
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 59 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 59 AND type = 'A'), 'Não', 'NO', 2),
((SELECT id FROM questions WHERE question_order = 59 AND type = 'A'), 'Tanto faz', 'ANY', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 159 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 159 AND type = 'B'), 'Não', 'NO', 2);

-- 60. TERAPIA
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 60 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 60 AND type = 'A'), 'Não', 'NO', 2),
((SELECT id FROM questions WHERE question_order = 60 AND type = 'A'), 'Tanto faz', 'ANY', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 160 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 160 AND type = 'B'), 'Não', 'NO', 2);

-- 61. EDUCADA
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 61 AND type = 'A'), 'Essencial', 'ESSENTIAL', 1),
((SELECT id FROM questions WHERE question_order = 61 AND type = 'A'), 'Importante', 'IMPORTANT', 2);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 161 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 161 AND type = 'B'), 'Às vezes não', 'NO', 2);

-- 62. MORAL
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 62 AND type = 'A'), 'Essencial', 'ESSENTIAL', 1),
((SELECT id FROM questions WHERE question_order = 62 AND type = 'A'), 'Importante', 'IMPORTANT', 2);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 162 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 162 AND type = 'B'), 'Às vezes falho', 'NO', 2);

-- 63. PEDIR DESCULPAS
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 63 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 63 AND type = 'A'), 'Não', 'NO', 2),
((SELECT id FROM questions WHERE question_order = 63 AND type = 'A'), 'Tanto faz', 'ANY', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 163 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 163 AND type = 'B'), 'Tenho dificuldade', 'NO', 2);

-- 64. INTELIGÊNCIA EMOCIONAL
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 64 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 64 AND type = 'A'), 'Não', 'NO', 2),
((SELECT id FROM questions WHERE question_order = 64 AND type = 'A'), 'Tanto faz', 'ANY', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 164 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 164 AND type = 'B'), 'Tenho dificuldade', 'NO', 2);

-- BLOCO 8 – LIMITES IMPORTANTES (65–72)
-- 65. AMIZADES SEXO OPOSTO
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 65 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 65 AND type = 'A'), 'Não', 'NO', 2);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 165 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 165 AND type = 'B'), 'Não', 'NO', 2);

-- 66. AMIZADE EX
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 66 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 66 AND type = 'A'), 'Não', 'NO', 2);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 166 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 166 AND type = 'B'), 'Não', 'NO', 2);

-- 67. VIAJAR SEM VOCÊ
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 67 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 67 AND type = 'A'), 'Não', 'NO', 2);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 167 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 167 AND type = 'B'), 'Não', 'NO', 2);

-- 68. VOCÊ VIAJAR SEM ELA
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 68 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 68 AND type = 'A'), 'Não', 'NO', 2);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 168 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 168 AND type = 'B'), 'Não', 'NO', 2);

-- 69. FESTAS SEM VOCÊ
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 69 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 69 AND type = 'A'), 'Não', 'NO', 2);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 169 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 169 AND type = 'B'), 'Não', 'NO', 2);

-- 70. CONTATO DIÁRIO
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 70 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 70 AND type = 'A'), 'Não', 'NO', 2);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 170 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 170 AND type = 'B'), 'Não', 'NO', 2);

-- 71. ESPAÇO PESSOAL
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 71 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 71 AND type = 'A'), 'Não', 'NO', 2);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 171 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 171 AND type = 'B'), 'Não', 'NO', 2);

-- 72. PRIVACIDADE CELULAR
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 72 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 72 AND type = 'A'), 'Não', 'NO', 2);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 172 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 172 AND type = 'B'), 'Não', 'NO', 2);

-- BLOCO 9 – SEXO & RELACIONAMENTO (73–77)
-- 74. PRIORIDADE SEXO
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 74 AND type = 'A'), 'Alta', 'HIGH', 1),
((SELECT id FROM questions WHERE question_order = 74 AND type = 'A'), 'Média', 'MEDIUM', 2),
((SELECT id FROM questions WHERE question_order = 74 AND type = 'A'), 'Baixa', 'LOW', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 174 AND type = 'B'), 'Alta', 'HIGH', 1),
((SELECT id FROM questions WHERE question_order = 174 AND type = 'B'), 'Média', 'MEDIUM', 2),
((SELECT id FROM questions WHERE question_order = 174 AND type = 'B'), 'Baixa', 'LOW', 3);

-- 75. TIPO RELACIONAMENTO
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 75 AND type = 'A'), 'Monogâmico (Fechado)', 'MONO', 1),
((SELECT id FROM questions WHERE question_order = 75 AND type = 'A'), 'Aberto', 'OPEN', 2),
((SELECT id FROM questions WHERE question_order = 75 AND type = 'A'), 'Poliamor', 'POLY', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 175 AND type = 'B'), 'Monogâmico (Fechado)', 'MONO', 1),
((SELECT id FROM questions WHERE question_order = 175 AND type = 'B'), 'Aberto', 'OPEN', 2),
((SELECT id FROM questions WHERE question_order = 175 AND type = 'B'), 'Poliamor', 'POLY', 3);

-- 76. CASAR
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 76 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 76 AND type = 'A'), 'Não', 'NO', 2),
((SELECT id FROM questions WHERE question_order = 76 AND type = 'A'), 'Talvez', 'MAYBE', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 176 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 176 AND type = 'B'), 'Não', 'NO', 2),
((SELECT id FROM questions WHERE question_order = 176 AND type = 'B'), 'Talvez', 'MAYBE', 3);

-- 77. MORAR JUNTO
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 77 AND type = 'A'), 'Em breve', 'SOON', 1),
((SELECT id FROM questions WHERE question_order = 77 AND type = 'A'), 'Médio prazo', 'MEDIUM', 2),
((SELECT id FROM questions WHERE question_order = 77 AND type = 'A'), 'Longo prazo', 'LONG', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 177 AND type = 'B'), 'Em breve', 'SOON', 1),
((SELECT id FROM questions WHERE question_order = 177 AND type = 'B'), 'Médio prazo', 'MEDIUM', 2),
((SELECT id FROM questions WHERE question_order = 177 AND type = 'B'), 'Longo prazo', 'LONG', 3);

-- BLOCO 10 – TRABALHO & FUTURO (78–85)
-- 78. TRABALHO IMPORTÂNCIA
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 78 AND type = 'A'), 'Muito importante', 'HIGH', 1),
((SELECT id FROM questions WHERE question_order = 78 AND type = 'A'), 'Normal', 'NORMAL', 2),
((SELECT id FROM questions WHERE question_order = 78 AND type = 'A'), 'Pouco importante', 'LOW', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 178 AND type = 'B'), 'Muito importante', 'HIGH', 1),
((SELECT id FROM questions WHERE question_order = 178 AND type = 'B'), 'Normal', 'NORMAL', 2),
((SELECT id FROM questions WHERE question_order = 178 AND type = 'B'), 'Pouco importante', 'LOW', 3);

-- 79. AMBIÇÃO
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 79 AND type = 'A'), 'Alta', 'HIGH', 1),
((SELECT id FROM questions WHERE question_order = 79 AND type = 'A'), 'Normal', 'NORMAL', 2),
((SELECT id FROM questions WHERE question_order = 79 AND type = 'A'), 'Baixa', 'LOW', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 179 AND type = 'B'), 'Alta', 'HIGH', 1),
((SELECT id FROM questions WHERE question_order = 179 AND type = 'B'), 'Normal', 'NORMAL', 2),
((SELECT id FROM questions WHERE question_order = 179 AND type = 'B'), 'Baixa', 'LOW', 3);

-- 80. ESTABILIDADE PROFISSIONAL
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 80 AND type = 'A'), 'Essencial', 'ESSENTIAL', 1),
((SELECT id FROM questions WHERE question_order = 80 AND type = 'A'), 'Importante', 'IMPORTANT', 2);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 180 AND type = 'B'), 'Tenho', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 180 AND type = 'B'), 'Estou buscando', 'SEEKING', 2);

-- 81. MUDANÇA DE CIDADE
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 81 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 81 AND type = 'A'), 'Não', 'NO', 2);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 181 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 181 AND type = 'B'), 'Não', 'NO', 2);

-- 82. MUDANÇA DE PAÍS
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 82 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 82 AND type = 'A'), 'Não', 'NO', 2);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 182 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 182 AND type = 'B'), 'Não', 'NO', 2);

-- 83. APOSENTADORIA
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 83 AND type = 'A'), 'Planejada', 'PLANNED', 1),
((SELECT id FROM questions WHERE question_order = 83 AND type = 'A'), 'Não planejada', 'UNPLANNED', 2);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 183 AND type = 'B'), 'Planejada', 'PLANNED', 1),
((SELECT id FROM questions WHERE question_order = 183 AND type = 'B'), 'Não planejada', 'UNPLANNED', 2);

-- 84. INVESTIMENTOS
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 84 AND type = 'A'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 84 AND type = 'A'), 'Não', 'NO', 2);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 184 AND type = 'B'), 'Sim', 'YES', 1),
((SELECT id FROM questions WHERE question_order = 184 AND type = 'B'), 'Não', 'NO', 2);

-- 85. NÍVEL EDUCACIONAL
INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 85 AND type = 'A'), 'Superior', 'DEGREE', 1),
((SELECT id FROM questions WHERE question_order = 85 AND type = 'A'), 'Médio', 'HIGHSCHOOL', 2),
((SELECT id FROM questions WHERE question_order = 85 AND type = 'A'), 'Tanto faz', 'ANY', 3);

INSERT INTO question_options (question_id, label_pt, value_code, display_order) VALUES
((SELECT id FROM questions WHERE question_order = 185 AND type = 'B'), 'Superior', 'DEGREE', 1),
((SELECT id FROM questions WHERE question_order = 185 AND type = 'B'), 'Médio', 'HIGHSCHOOL', 2),
((SELECT id FROM questions WHERE question_order = 185 AND type = 'B'), 'Outro', 'OTHER', 3);
