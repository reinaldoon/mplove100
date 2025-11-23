-- ============================================
-- OPÇÕES CORE (Sexo + Finanças) com IDs fixos
-- ============================================

-- SEXO (73/173/212)
INSERT INTO question_options (id, question_id, label_pt, value_code, display_order) VALUES
(1001, (SELECT id FROM questions WHERE question_order = 73 AND type = 'A'), '1x por semana', 'SEX_1X', 1),
(1002, (SELECT id FROM questions WHERE question_order = 73 AND type = 'A'), '2–3x por semana', 'SEX_2_3X', 2),
(1003, (SELECT id FROM questions WHERE question_order = 73 AND type = 'A'), '4x ou mais por semana', 'SEX_4X_PLUS', 3),
(1004, (SELECT id FROM questions WHERE question_order = 73 AND type = 'A'), 'Apenas quando rolar naturalmente', 'SEX_NATURAL', 4),
(1005, (SELECT id FROM questions WHERE question_order = 73 AND type = 'A'), 'Não me importo com a frequência', 'SEX_TOLERANT', 5),

(1006, (SELECT id FROM questions WHERE question_order = 173 AND type = 'B'), '1x por semana', 'SEX_1X', 1),
(1007, (SELECT id FROM questions WHERE question_order = 173 AND type = 'B'), '2–3x por semana', 'SEX_2_3X', 2),
(1008, (SELECT id FROM questions WHERE question_order = 173 AND type = 'B'), '4x ou mais por semana', 'SEX_4X_PLUS', 3),
(1009, (SELECT id FROM questions WHERE question_order = 173 AND type = 'B'), 'Apenas quando rolar naturalmente', 'SEX_NATURAL', 4);

INSERT INTO question_options (id, question_id, label_pt, value_code, display_order, tolerance_level) VALUES
(1010, (SELECT id FROM questions WHERE question_order = 212 AND type = 'C'), 'Não aceito', 'NO', 1, 0),
(1011, (SELECT id FROM questions WHERE question_order = 212 AND type = 'C'), 'Até certo ponto', 'MAYBE', 2, 1),
(1012, (SELECT id FROM questions WHERE question_order = 212 AND type = 'C'), 'Aceito', 'YES', 3, 2);

-- DIVIDIR CONTAS (86/186/215)
INSERT INTO question_options (id, question_id, label_pt, value_code, display_order) VALUES
(1013, (SELECT id FROM questions WHERE question_order = 86 AND type = 'A'), 'Sim, deve ser 50/50', 'SPLIT_EQUAL', 1),
(1014, (SELECT id FROM questions WHERE question_order = 86 AND type = 'A'), 'Não precisa ser 50/50, desde que seja justo', 'SPLIT_FAIR', 2),
(1015, (SELECT id FROM questions WHERE question_order = 86 AND type = 'A'), 'Eu prefiro pagar mais', 'SPLIT_PROVIDER', 3),
(1016, (SELECT id FROM questions WHERE question_order = 86 AND type = 'A'), 'Eu prefiro que o outro pague mais', 'SPLIT_RECEIVER', 4),

(1017, (SELECT id FROM questions WHERE question_order = 186 AND type = 'B'), 'Prefiro 50/50', 'SPLIT_EQUAL', 1),
(1018, (SELECT id FROM questions WHERE question_order = 186 AND type = 'B'), 'Prefiro dividir de forma justa', 'SPLIT_FAIR', 2),
(1019, (SELECT id FROM questions WHERE question_order = 186 AND type = 'B'), 'Posso pagar mais se necessário', 'SPLIT_PROVIDER', 3),
(1020, (SELECT id FROM questions WHERE question_order = 186 AND type = 'B'), 'Prefiro que o outro pague mais', 'SPLIT_RECEIVER', 4);

INSERT INTO question_options (id, question_id, label_pt, value_code, display_order, tolerance_level) VALUES
(1021, (SELECT id FROM questions WHERE question_order = 215 AND type = 'C'), 'Não aceito visão diferente da minha', 'NO', 1, 0),
(1022, (SELECT id FROM questions WHERE question_order = 215 AND type = 'C'), 'Depende da situação financeira', 'MAYBE', 2, 1),
(1023, (SELECT id FROM questions WHERE question_order = 215 AND type = 'C'), 'Aceito sem problemas', 'YES', 3, 2);

-- RESPONSABILIDADE FINANCEIRA (87/187) - Sem C
INSERT INTO question_options (id, question_id, label_pt, value_code, display_order) VALUES
(1024, (SELECT id FROM questions WHERE question_order = 87 AND type = 'A'), 'Sim, é essencial', 'RESP_HIGH', 1),
(1025, (SELECT id FROM questions WHERE question_order = 87 AND type = 'A'), 'Seria bom, mas não essencial', 'RESP_MEDIUM', 2),
(1026, (SELECT id FROM questions WHERE question_order = 87 AND type = 'A'), 'Não me importo', 'RESP_LOW', 3),

(1027, (SELECT id FROM questions WHERE question_order = 187 AND type = 'B'), 'Sou muito responsável', 'RESP_HIGH', 1),
(1028, (SELECT id FROM questions WHERE question_order = 187 AND type = 'B'), 'Sou moderadamente responsável', 'RESP_MEDIUM', 2),
(1029, (SELECT id FROM questions WHERE question_order = 187 AND type = 'B'), 'Sou desorganizado', 'RESP_LOW', 3);

-- INSERT INTO question_options (id, question_id, label_pt, value_code, display_order, tolerance_level) VALUES
-- (1030, (SELECT id FROM questions WHERE question_order = 287 AND type = 'C'), 'Não aceito', 'NO', 1, 0),
-- (1031, (SELECT id FROM questions WHERE question_order = 287 AND type = 'C'), 'Depende', 'MAYBE', 2, 1),
-- (1032, (SELECT id FROM questions WHERE question_order = 287 AND type = 'C'), 'Aceito', 'YES', 3, 2);

-- DÍVIDAS (88/188) - Sem C
INSERT INTO question_options (id, question_id, label_pt, value_code, display_order) VALUES
(1033, (SELECT id FROM questions WHERE question_order = 88 AND type = 'A'), 'Sim, sem problemas', 'DEBT_OK', 1),
(1034, (SELECT id FROM questions WHERE question_order = 88 AND type = 'A'), 'Depende do motivo', 'DEBT_MAYBE', 2),
(1035, (SELECT id FROM questions WHERE question_order = 88 AND type = 'A'), 'Não, não aceito', 'DEBT_NO', 3),

(1036, (SELECT id FROM questions WHERE question_order = 188 AND type = 'B'), 'Não, não tenho', 'DEBT_NONE', 1),
(1037, (SELECT id FROM questions WHERE question_order = 188 AND type = 'B'), 'Sim, tenho algumas', 'DEBT_SMALL', 2),
(1038, (SELECT id FROM questions WHERE question_order = 188 AND type = 'B'), 'Sim, são dívidas grandes', 'DEBT_BIG', 3);

-- INSERT INTO question_options (id, question_id, label_pt, value_code, display_order, tolerance_level) VALUES
-- (1039, (SELECT id FROM questions WHERE question_order = 288 AND type = 'C'), 'Não aceito', 'NO', 1, 0),
-- (1040, (SELECT id FROM questions WHERE question_order = 288 AND type = 'C'), 'Depende do motivo', 'MAYBE', 2, 1),
-- (1041, (SELECT id FROM questions WHERE question_order = 288 AND type = 'C'), 'Aceito', 'YES', 3, 2);

-- JANTARES FORA (89/189/216)
INSERT INTO question_options (id, question_id, label_pt, value_code, display_order, tolerance_level) VALUES
(1042, (SELECT id FROM questions WHERE question_order = 89 AND type = 'A'), 'Até R$200', 'DINING_LOW', 1, 0),
(1043, (SELECT id FROM questions WHERE question_order = 89 AND type = 'A'), 'R$200–500', 'DINING_MEDIUM', 2, 0),
(1044, (SELECT id FROM questions WHERE question_order = 89 AND type = 'A'), 'R$500–1.000', 'DINING_HIGH', 3, 0),
(1045, (SELECT id FROM questions WHERE question_order = 89 AND type = 'A'), 'Acima de R$1.000', 'DINING_VERY_HIGH', 4, 0),
(1046, (SELECT id FROM questions WHERE question_order = 89 AND type = 'A'), 'Não me importo se a pessoa não puder investir', 'DINING_TOLERANT', 5, 2),
(1047, (SELECT id FROM questions WHERE question_order = 89 AND type = 'A'), 'Eu posso pagar quando necessário', 'DINING_PROVIDER', 6, 2);

INSERT INTO question_options (id, question_id, label_pt, value_code, display_order) VALUES
(1048, (SELECT id FROM questions WHERE question_order = 189 AND type = 'B'), 'Até R$200', 'DINING_LOW', 1),
(1049, (SELECT id FROM questions WHERE question_order = 189 AND type = 'B'), 'R$200–500', 'DINING_MEDIUM', 2),
(1050, (SELECT id FROM questions WHERE question_order = 189 AND type = 'B'), 'R$500–1.000', 'DINING_HIGH', 3),
(1051, (SELECT id FROM questions WHERE question_order = 189 AND type = 'B'), 'Acima de R$1.000', 'DINING_VERY_HIGH', 4),
(1052, (SELECT id FROM questions WHERE question_order = 189 AND type = 'B'), 'Não tenho disponibilidade financeira', 'DINING_NONE', 5);

INSERT INTO question_options (id, question_id, label_pt, value_code, display_order, tolerance_level) VALUES
(1053, (SELECT id FROM questions WHERE question_order = 216 AND type = 'C'), 'Não aceito', 'NO', 1, 0),
(1054, (SELECT id FROM questions WHERE question_order = 216 AND type = 'C'), 'Depende', 'MAYBE', 2, 1),
(1055, (SELECT id FROM questions WHERE question_order = 216 AND type = 'C'), 'Aceito', 'YES', 3, 2);

-- MERCADO (90/190/217)
INSERT INTO question_options (id, question_id, label_pt, value_code, display_order, tolerance_level) VALUES
(1056, (SELECT id FROM questions WHERE question_order = 90 AND type = 'A'), 'Até R$200', 'MARKET_LOW', 1, 0),
(1057, (SELECT id FROM questions WHERE question_order = 90 AND type = 'A'), 'R$200–500', 'MARKET_MEDIUM', 2, 0),
(1058, (SELECT id FROM questions WHERE question_order = 90 AND type = 'A'), 'R$500–1.000', 'MARKET_HIGH', 3, 0),
(1059, (SELECT id FROM questions WHERE question_order = 90 AND type = 'A'), 'Acima de R$1.000', 'MARKET_VERY_HIGH', 4, 0),
(1060, (SELECT id FROM questions WHERE question_order = 90 AND type = 'A'), 'Não me importo se a pessoa não puder investir', 'MARKET_TOLERANT', 5, 2),
(1061, (SELECT id FROM questions WHERE question_order = 90 AND type = 'A'), 'Eu posso pagar quando necessário', 'MARKET_PROVIDER', 6, 2);

INSERT INTO question_options (id, question_id, label_pt, value_code, display_order) VALUES
(1062, (SELECT id FROM questions WHERE question_order = 190 AND type = 'B'), 'Até R$200', 'MARKET_LOW', 1),
(1063, (SELECT id FROM questions WHERE question_order = 190 AND type = 'B'), 'R$200–500', 'MARKET_MEDIUM', 2),
(1064, (SELECT id FROM questions WHERE question_order = 190 AND type = 'B'), 'R$500–1.000', 'MARKET_HIGH', 3),
(1065, (SELECT id FROM questions WHERE question_order = 190 AND type = 'B'), 'Acima de R$1.000', 'MARKET_VERY_HIGH', 4),
(1066, (SELECT id FROM questions WHERE question_order = 190 AND type = 'B'), 'Não tenho disponibilidade financeira', 'MARKET_NONE', 5);

INSERT INTO question_options (id, question_id, label_pt, value_code, display_order, tolerance_level) VALUES
(1067, (SELECT id FROM questions WHERE question_order = 217 AND type = 'C'), 'Não aceito', 'NO', 1, 0),
(1068, (SELECT id FROM questions WHERE question_order = 217 AND type = 'C'), 'Depende', 'MAYBE', 2, 1),
(1069, (SELECT id FROM questions WHERE question_order = 217 AND type = 'C'), 'Aceito', 'YES', 3, 2);

-- VIAGENS (91/191/218)
INSERT INTO question_options (id, question_id, label_pt, value_code, display_order, tolerance_level) VALUES
(1070, (SELECT id FROM questions WHERE question_order = 91 AND type = 'A'), 'Até R$1.000', 'TRIP_LOW', 1, 0),
(1071, (SELECT id FROM questions WHERE question_order = 91 AND type = 'A'), 'R$1.000–5.000', 'TRIP_MEDIUM', 2, 0),
(1072, (SELECT id FROM questions WHERE question_order = 91 AND type = 'A'), 'R$5.000–10.000', 'TRIP_HIGH', 3, 0),
(1073, (SELECT id FROM questions WHERE question_order = 91 AND type = 'A'), 'Acima de R$10.000', 'TRIP_VERY_HIGH', 4, 0),
(1074, (SELECT id FROM questions WHERE question_order = 91 AND type = 'A'), 'Não me importo se a pessoa não puder investir', 'TRIP_TOLERANT', 5, 2),
(1075, (SELECT id FROM questions WHERE question_order = 91 AND type = 'A'), 'Eu posso pagar quando necessário', 'TRIP_PROVIDER', 6, 2);

INSERT INTO question_options (id, question_id, label_pt, value_code, display_order) VALUES
(1076, (SELECT id FROM questions WHERE question_order = 191 AND type = 'B'), 'Até R$1.000', 'TRIP_LOW', 1),
(1077, (SELECT id FROM questions WHERE question_order = 191 AND type = 'B'), 'R$1.000–5.000', 'TRIP_MEDIUM', 2),
(1078, (SELECT id FROM questions WHERE question_order = 191 AND type = 'B'), 'R$5.000–10.000', 'TRIP_HIGH', 3),
(1079, (SELECT id FROM questions WHERE question_order = 191 AND type = 'B'), 'Acima de R$10.000', 'TRIP_VERY_HIGH', 4),
(1080, (SELECT id FROM questions WHERE question_order = 191 AND type = 'B'), 'Não tenho disponibilidade financeira', 'TRIP_NONE', 5);

INSERT INTO question_options (id, question_id, label_pt, value_code, display_order, tolerance_level) VALUES
(1081, (SELECT id FROM questions WHERE question_order = 218 AND type = 'C'), 'Não aceito', 'NO', 1, 0),
(1082, (SELECT id FROM questions WHERE question_order = 218 AND type = 'C'), 'Depende', 'MAYBE', 2, 1),
(1083, (SELECT id FROM questions WHERE question_order = 218 AND type = 'C'), 'Aceito', 'YES', 3, 2);

-- ESTABILIDADE FINANCEIRA (94/194) - Sem C
INSERT INTO question_options (id, question_id, label_pt, value_code, display_order) VALUES
(1084, (SELECT id FROM questions WHERE question_order = 94 AND type = 'A'), 'Sim, isso é essencial para mim', 'STABILITY_HIGH', 1),
(1085, (SELECT id FROM questions WHERE question_order = 94 AND type = 'A'), 'Seria bom, mas não essencial', 'STABILITY_MEDIUM', 2),
(1086, (SELECT id FROM questions WHERE question_order = 94 AND type = 'A'), 'Não é importante', 'STABILITY_LOW', 3),

(1087, (SELECT id FROM questions WHERE question_order = 194 AND type = 'B'), 'Sim, sou organizado para isso', 'STABILITY_HIGH', 1),
(1088, (SELECT id FROM questions WHERE question_order = 194 AND type = 'B'), 'Sou moderado, mas posso melhorar', 'STABILITY_MEDIUM', 2),
(1089, (SELECT id FROM questions WHERE question_order = 194 AND type = 'B'), 'Tenho dificuldade nisso', 'STABILITY_LOW', 3);

-- INSERT INTO question_options (id, question_id, label_pt, value_code, display_order, tolerance_level) VALUES
-- (1090, (SELECT id FROM questions WHERE question_order = 294 AND type = 'C'), 'Não aceito', 'NO', 1, 0),
-- (1091, (SELECT id FROM questions WHERE question_order = 294 AND type = 'C'), 'Depende', 'MAYBE', 2, 1),
-- (1092, (SELECT id FROM questions WHERE question_order = 294 AND type = 'C'), 'Aceito', 'YES', 3, 2);
