-- ============================================
-- PERGUNTAS A (Ideal Partner) - 100 perguntas
-- ============================================
INSERT INTO questions (category_id, block_number, question_order, text_pt, type, question_weight) VALUES
-- BLOCO 1 – IDENTIDADE & BÁSICO (1–6)
(1, 1, 1,  'A pessoa dos seus sonhos é homem, mulher ou tanto faz?', 'A', 1.00),
(1, 1, 2,  'A pessoa dos seus sonhos pode ter entre quantos anos?', 'A', 1.00),
(1, 1, 3,  'A pessoa dos seus sonhos deve ter qual altura?', 'A', 1.00),
(1, 1, 4,  'A pessoa dos seus sonhos deve ter qual biotipo?', 'A', 1.00),
(1, 1, 5,  'A pessoa dos seus sonhos deve ter qual etnia?', 'A', 1.00),
(1, 1, 6,  'A aparência é muito importante para você ou apenas complementar?', 'A', 1.00),

-- BLOCO 2 – ESTÉTICA & ESTILO VISUAL (7–11)
(2, 2, 7,  'A pessoa dos seus sonhos pode ter tatuagem?', 'A', 1.00),
(2, 2, 8,  'A pessoa dos seus sonhos pode usar brincos?', 'A', 1.00),
(2, 2, 9,  'A pessoa dos seus sonhos pode ter cabelos curtos, longos ou tanto faz?', 'A', 1.00),
(2, 2, 10, 'A pessoa dos seus sonhos pode ter barba (se for homem)?', 'A', 1.00),
(2, 2, 11, 'A pessoa dos seus sonhos pode ter unhas alongadas (se for mulher)?', 'A', 1.00),

-- BLOCO 3 – HISTÓRICO DE VIDA (12–16)
(3, 3, 12, 'A pessoa dos seus sonhos já pode ter sido casada?', 'A', 1.00),
(3, 3, 13, 'A pessoa dos seus sonhos pode ter filhos?', 'A', 1.00),
(3, 3, 14, 'A pessoa dos seus sonhos deseja ter filhos no futuro?', 'A', 1.00),
(3, 3, 15, 'A pessoa dos seus sonhos aceita alguém que já foi casado?', 'A', 1.00),
(3, 3, 16, 'A pessoa dos seus sonhos aceita alguém que já tem filhos?', 'A', 1.00),

-- BLOCO 4 – PERSONALIDADE PROFUNDA (17–26)
(4, 4, 17, 'A pessoa dos seus sonhos é extrovertida, introvertida ou equilibrada?', 'A', 1.00),
(4, 4, 18, 'A pessoa dos seus sonhos é mais emocional ou racional?', 'A', 1.00),
(4, 4, 19, 'A pessoa dos seus sonhos é mais calma ou intensa?', 'A', 1.00),
(4, 4, 20, 'A pessoa dos seus sonhos é romântica?', 'A', 1.00),
(4, 4, 21, 'A pessoa dos seus sonhos demonstra carinho facilmente?', 'A', 1.00),
(4, 4, 22, 'A pessoa dos seus sonhos gosta de conversar bastante?', 'A', 1.00),
(4, 4, 23, 'A pessoa dos seus sonhos é generosa?', 'A', 1.00),
(4, 4, 24, 'A pessoa dos seus sonhos é vaidosa?', 'A', 1.00),
(4, 4, 25, 'A pessoa dos seus sonhos é organizada ou bagunceira?', 'A', 1.00),
(4, 4, 26, 'A pessoa dos seus sonhos preza por higiene e cuidados pessoais?', 'A', 1.00),

-- BLOCO 5 – ESTILO DE VIDA (27–41)
(5, 5, 27, 'A pessoa dos seus sonhos precisa fazer academia?', 'A', 1.00),
(5, 5, 28, 'A pessoa dos seus sonhos precisa fazer dieta?', 'A', 1.00),
(5, 5, 29, 'A pessoa dos seus sonhos pode beber álcool?', 'A', 1.00),
(5, 5, 30, 'A pessoa dos seus sonhos pode fumar cigarro?', 'A', 1.00),
(5, 5, 31, 'A pessoa dos seus sonhos pode usar drogas ilícitas?', 'A', 1.00),
(5, 5, 32, 'Quais drogas ilícitas a pessoa dos seus sonhos pode usar?', 'A', 1.00),
(5, 5, 33, 'A pessoa dos seus sonhos gosta de viagens?', 'A', 1.00),
(5, 5, 34, 'A pessoa dos seus sonhos prefere praia ou cidade?', 'A', 1.00),
(5, 5, 35, 'A pessoa dos seus sonhos gosta de natureza?', 'A', 1.00),
(5, 5, 36, 'A pessoa dos seus sonhos gosta de caminhadas na cidade ou parque?', 'A', 1.00),
(5, 5, 37, 'A pessoa dos seus sonhos gosta de ficar em casa?', 'A', 1.00),
(5, 5, 38, 'A pessoa dos seus sonhos gosta de festas e baladas?', 'A', 1.00),
(5, 5, 39, 'A pessoa dos seus sonhos gosta de restaurantes e bares?', 'A', 1.00),
(5, 5, 40, 'A pessoa dos seus sonhos acorda cedo ou tarde?', 'A', 1.00),
(5, 5, 41, 'A pessoa dos seus sonhos dorme cedo ou tarde?', 'A', 1.00),

-- BLOCO 6 – ROTINA & HÁBITOS (42–55)
(6, 6, 42, 'A pessoa dos seus sonhos gosta de cozinhar?', 'A', 1.00),
(6, 6, 43, 'A pessoa dos seus sonhos gosta de comer fora?', 'A', 1.00),
(6, 6, 44, 'A pessoa dos seus sonhos precisa gostar de filmes, séries, Netflix?', 'A', 1.00),
(6, 6, 45, 'A pessoa dos seus sonhos deve ter hobbies?', 'A', 1.00),
(6, 6, 46, 'A pessoa dos seus sonhos gosta de ler?', 'A', 1.00),
(6, 6, 47, 'A pessoa dos seus sonhos deve gostar de qual estilo musical?', 'A', 1.00),
(6, 6, 48, 'A pessoa dos seus sonhos gosta de esportes?', 'A', 1.00),
(6, 6, 49, 'A pessoa dos seus sonhos deve saber dirigir?', 'A', 1.00),
(6, 6, 50, 'A pessoa dos seus sonhos precisa ter carro?', 'A', 1.00),
(6, 6, 51, 'A pessoa dos seus sonhos precisa ter moto?', 'A', 1.00),
(6, 6, 52, 'A pessoa dos seus sonhos precisa ter casa própria?', 'A', 1.00),
(6, 6, 53, 'A pessoa dos seus sonhos pode dividir casa com alguém?', 'A', 1.00),
(6, 6, 54, 'A pessoa dos seus sonhos aceita pets?', 'A', 1.00),
(6, 6, 55, 'A pessoa dos seus sonhos gosta de animais dentro de casa?', 'A', 1.00),

-- BLOCO 7 – CARÁTER & VALORES (56–64)
(7, 7, 56, 'A pessoa dos seus sonhos valoriza família?', 'A', 1.00),
(7, 7, 57, 'A pessoa dos seus sonhos valoriza fidelidade?', 'A', 1.00),
(7, 7, 58, 'A pessoa dos seus sonhos deve ter alguma religião específica?', 'A', 1.00),
(7, 7, 59, 'A pessoa dos seus sonhos acredita em Deus?', 'A', 1.00),
(7, 7, 60, 'A pessoa dos seus sonhos faz terapia ou busca autoconhecimento?', 'A', 1.00),
(7, 7, 61, 'A pessoa dos seus sonhos é educada e respeitosa?', 'A', 1.00),
(7, 7, 62, 'A pessoa dos seus sonhos tem boa moral e caráter?', 'A', 1.00),
(7, 7, 63, 'A pessoa dos seus sonhos consegue pedir desculpas quando erra?', 'A', 1.00),
(7, 7, 64, 'A pessoa dos seus sonhos tem inteligência emocional para discutir sem gritar?', 'A', 1.00),

-- BLOCO 8 – LIMITES IMPORTANTES (65–72)
(5, 8, 65, 'A pessoa dos seus sonhos aceita amizades do sexo oposto?', 'A', 1.00),
(5, 8, 66, 'A pessoa dos seus sonhos pode ser amiga de ex-namorados?', 'A', 1.00),
(5, 8, 67, 'A pessoa dos seus sonhos aceita viajar sem você?', 'A', 1.00),
(5, 8, 68, 'A pessoa dos seus sonhos aceita você viajar sem ela?', 'A', 1.00),
(5, 8, 69, 'A pessoa dos seus sonhos pode ir a festas sem você?', 'A', 1.00),
(5, 8, 70, 'A pessoa dos seus sonhos aceita contato diário?', 'A', 1.00),
(5, 8, 71, 'A pessoa dos seus sonhos precisa de espaço pessoal?', 'A', 1.00),
(5, 8, 72, 'A pessoa dos seus sonhos aceita limites de privacidade no celular?', 'A', 1.00),

-- BLOCO 9 – SEXO & RELACIONAMENTO (73–77)
(6, 9, 73, 'A pessoa dos seus sonhos busca sexo com qual frequência?', 'A', 1.00),
(6, 9, 74, 'A pessoa dos seus sonhos considera sexo prioridade no relacionamento?', 'A', 1.00),
(6, 9, 75, 'A pessoa dos seus sonhos deseja qual tipo de relacionamento? (fechado, aberto, etc.)', 'A', 1.00),
(6, 9, 76, 'A pessoa dos seus sonhos deseja casar um dia?', 'A', 1.00),
(6, 9, 77, 'Em quanto tempo a pessoa dos seus sonhos gostaria de morar junto?', 'A', 1.00),

-- BLOCO 10 – TRABALHO, CARREIRA & FUTURO (78–85)
(4, 10, 78, 'A pessoa dos seus sonhos trabalha home office, híbrido ou presencial?', 'A', 1.00),
(4, 10, 79, 'A pessoa dos seus sonhos trabalha muitas horas por dia?', 'A', 1.00),
(4, 10, 80, 'A pessoa dos seus sonhos viaja muito a trabalho?', 'A', 1.00),
(4, 10, 81, 'A pessoa dos seus sonhos tem estabilidade profissional?', 'A', 1.00),
(4, 10, 82, 'A pessoa dos seus sonhos deseja morar em outra cidade ou país?', 'A', 1.00),
(4, 10, 83, 'A pessoa dos seus sonhos prefere vida urbana ou tranquila?', 'A', 1.00),
(4, 10, 84, 'A pessoa dos seus sonhos quer empreender ou prefere estabilidade CLT?', 'A', 1.00),
(4, 10, 85, 'A pessoa dos seus sonhos tem interesse em crescer junto com você?', 'A', 1.00),

-- BLOCO 11 – FINANÇAS (86–94)
(7, 11, 86, 'A pessoa dos seus sonhos deve dividir as contas 50/50?', 'A', 1.00),
(7, 11, 87, 'A pessoa dos seus sonhos tem responsabilidade financeira?', 'A', 1.00),
(7, 11, 88, 'A pessoa dos seus sonhos pode ter dívidas grandes?', 'A', 1.00),
(7, 11, 89, 'A pessoa dos seus sonhos deve investir quanto por mês em jantares fora?', 'A', 1.00),
(7, 11, 90, 'A pessoa dos seus sonhos deve investir quanto por mês em compras para cozinhar em casa?', 'A', 1.00),
(7, 11, 91, 'A pessoa dos seus sonhos deve investir quanto por ano em viagens?', 'A', 1.00),
(7, 11, 92, 'A pessoa dos seus sonhos aceita viajar de forma simples quando necessário?', 'A', 1.00),
(7, 11, 93, 'A pessoa dos seus sonhos deve ter prioridades de vida alinhadas com você? (família, carreira, fé, dinheiro etc.)', 'A', 1.00),
(7, 11, 94, 'A pessoa dos seus sonhos consegue construir estabilidade financeira com você?', 'A', 1.00),

-- BLOCO 12 – FECHAMENTO EMOCIONAL (95–100)
(3, 12, 95, 'A pessoa dos seus sonhos busca parceria?', 'A', 1.00),
(3, 12, 96, 'A pessoa dos seus sonhos quer construir um futuro juntos?', 'A', 1.00),
(3, 12, 97, 'A pessoa dos seus sonhos sabe resolver problemas em conjunto?', 'A', 1.00),
(3, 12, 98, 'A pessoa dos seus sonhos valoriza paz no relacionamento?', 'A', 1.00),
(3, 12, 99, 'A pessoa dos seus sonhos se esforça para manter o relacionamento saudável?', 'A', 1.00),
(3, 12, 100,'A pessoa dos seus sonhos acredita no amor como construção diária?', 'A', 1.00);

-- ============================================
-- PERGUNTAS B (Self) - 100 perguntas
-- ============================================
INSERT INTO questions (category_id, block_number, question_order, text_pt, type, question_weight) VALUES
-- BLOCO 1 – IDENTIDADE & BÁSICO (101–106)
(1, 1, 101, 'Você é homem, mulher ou outro?', 'B', 1.00),
(1, 1, 102, 'Qual é a sua faixa etária?', 'B', 1.00),
(1, 1, 103, 'Qual é a sua altura aproximada?', 'B', 1.00),
(1, 1, 104, 'Qual é o seu biotipo?', 'B', 1.00),
(1, 1, 105, 'Qual é a sua etnia?', 'B', 1.00),
(1, 1, 106, 'Qual é o seu nível de cuidado com aparência?', 'B', 1.00),

-- BLOCO 2 – ESTÉTICA & ESTILO VISUAL (107–111)
(2, 2, 107, 'Você tem tatuagens?', 'B', 1.00),
(2, 2, 108, 'Você usa brincos?', 'B', 1.00),
(2, 2, 109, 'Como é o seu cabelo hoje (curto, longo, etc.)?', 'B', 1.00),
(2, 2, 110, 'Você usa barba (se for homem)?', 'B', 1.00),
(2, 2, 111, 'Você usa ou gosta de unhas alongadas (se for mulher)?', 'B', 1.00),

-- BLOCO 3 – HISTÓRICO DE VIDA (112–116)
(3, 3, 112, 'Você já foi casado(a)?', 'B', 1.00),
(3, 3, 113, 'Você tem filhos?', 'B', 1.00),
(3, 3, 114, 'Você deseja ter filhos no futuro?', 'B', 1.00),
(3, 3, 115, 'Você aceitaria um parceiro que já foi casado(a)?', 'B', 1.00),
(3, 3, 116, 'Você aceitaria um parceiro que já tem filhos?', 'B', 1.00),

-- BLOCO 4 – PERSONALIDADE PROFUNDA (117–126)
(4, 4, 117, 'Você se considera mais extrovertido(a), introvertido(a) ou equilibrado(a)?', 'B', 1.00),
(4, 4, 118, 'Você é mais emocional ou racional?', 'B', 1.00),
(4, 4, 119, 'Você é mais calmo(a) ou intenso(a)?', 'B', 1.00),
(4, 4, 120, 'Você se considera uma pessoa romântica?', 'B', 1.00),
(4, 4, 121, 'Você demonstra carinho com facilidade?', 'B', 1.00),
(4, 4, 122, 'Você gosta de conversar bastante?', 'B', 1.00),
(4, 4, 123, 'Você se considera uma pessoa generosa?', 'B', 1.00),
(4, 4, 124, 'Você se considera vaidoso(a)?', 'B', 1.00),
(4, 4, 125, 'Você é mais organizado(a) ou bagunceiro(a)?', 'B', 1.00),
(4, 4, 126, 'Você se cuida bem em higiene e cuidados pessoais?', 'B', 1.00),

-- BLOCO 5 – ESTILO DE VIDA (127–141)
(5, 5, 127, 'Você faz academia com regularidade?', 'B', 1.00),
(5, 5, 128, 'Você segue algum tipo de dieta?', 'B', 1.00),
(5, 5, 129, 'Você bebe álcool?', 'B', 1.00),
(5, 5, 130, 'Você fuma cigarro?', 'B', 1.00),
(5, 5, 131, 'Você usa drogas ilícitas?', 'B', 1.00),
(5, 5, 132, 'Se sim, quais drogas ilícitas você usa ou já usou?', 'B', 1.00),
(5, 5, 133, 'Você gosta de viajar?', 'B', 1.00),
(5, 5, 134, 'Você prefere praia ou cidade?', 'B', 1.00),
(5, 5, 135, 'Você gosta de natureza?', 'B', 1.00),
(5, 5, 136, 'Você gosta de caminhadas na cidade ou parque?', 'B', 1.00),
(5, 5, 137, 'Você gosta de ficar em casa?', 'B', 1.00),
(5, 5, 138, 'Você gosta de festas e baladas?', 'B', 1.00),
(5, 5, 139, 'Você gosta de restaurantes e bares?', 'B', 1.00),
(5, 5, 140, 'Você costuma acordar cedo ou tarde?', 'B', 1.00),
(5, 5, 141, 'Você costuma dormir cedo ou tarde?', 'B', 1.00),

-- BLOCO 6 – ROTINA & HÁBITOS (142–155)
(6, 6, 142, 'Você gosta de cozinhar?', 'B', 1.00),
(6, 6, 143, 'Você gosta de comer fora com frequência?', 'B', 1.00),
(6, 6, 144, 'Você gosta de filmes, séries e plataformas como Netflix?', 'B', 1.00),
(6, 6, 145, 'Você tem hobbies definidos?', 'B', 1.00),
(6, 6, 146, 'Você gosta de ler?', 'B', 1.00),
(6, 6, 147, 'Qual estilo musical você mais gosta?', 'B', 1.00),
(6, 6, 148, 'Você gosta de praticar esportes?', 'B', 1.00),
(6, 6, 149, 'Você sabe dirigir?', 'B', 1.00),
(6, 6, 150, 'Você tem carro próprio?', 'B', 1.00),
(6, 6, 151, 'Você tem moto própria?', 'B', 1.00),
(6, 6, 152, 'Você tem casa própria?', 'B', 1.00),
(6, 6, 153, 'Você divide casa com alguém?', 'B', 1.00),
(6, 6, 154, 'Você aceita pets em casa?', 'B', 1.00),
(6, 6, 155, 'Você gosta de animais dentro de casa?', 'B', 1.00),

-- BLOCO 7 – CARÁTER & VALORES (156–164)
(7, 7, 156, 'Família é importante para você?', 'B', 1.00),
(7, 7, 157, 'Fidelidade é muito importante para você?', 'B', 1.00),
(7, 7, 158, 'Você segue alguma religião específica?', 'B', 1.00),
(7, 7, 159, 'Você acredita em Deus?', 'B', 1.00),
(7, 7, 160, 'Você faz terapia ou busca autoconhecimento?', 'B', 1.00),
(7, 7, 161, 'Você se considera educado(a) e respeitoso(a)?', 'B', 1.00),
(7, 7, 162, 'Você se considera uma pessoa de bom caráter?', 'B', 1.00),
(7, 7, 163, 'Você consegue pedir desculpas quando erra?', 'B', 1.00),
(7, 7, 164, 'Você consegue discutir sem gritar ou perder o controle?', 'B', 1.00),

-- BLOCO 8 – LIMITES IMPORTANTES (165–172)
(5, 8, 165, 'Você aceita ter amizades do sexo oposto em um relacionamento?', 'B', 1.00),
(5, 8, 166, 'Você mantém amizade com ex-namorados(as)?', 'B', 1.00),
(5, 8, 167, 'Você aceitaria viajar sem o seu parceiro?', 'B', 1.00),
(5, 8, 168, 'Você aceitaria que o seu parceiro viajasse sem você?', 'B', 1.00),
(5, 8, 169, 'Você costuma ir a festas sem o parceiro?', 'B', 1.00),
(5, 8, 170, 'Você gosta de contato diário em um relacionamento?', 'B', 1.00),
(5, 8, 171, 'Você precisa de espaço pessoal com frequência?', 'B', 1.00),
(5, 8, 172, 'Você aceita limites de privacidade no celular (sem acesso total)?', 'B', 1.00),

-- BLOCO 9 – SEXO & RELACIONAMENTO (173–177)
(6, 9, 173, 'Com que frequência você gosta de fazer sexo?', 'B', 1.00),
(6, 9, 174, 'Sexo é prioridade para você em um relacionamento?', 'B', 1.00),
(6, 9, 175, 'Qual tipo de relacionamento você deseja (fechado, aberto, etc.)?', 'B', 1.00),
(6, 9, 176, 'Você deseja casar um dia?', 'B', 1.00),
(6, 9, 177, 'Em quanto tempo você gostaria de morar junto com alguém?', 'B', 1.00),

-- BLOCO 10 – TRABALHO, CARREIRA & FUTURO (178–185)
(4, 10, 178, 'Você trabalha home office, híbrido ou presencial?', 'B', 1.00),
(4, 10, 179, 'Você trabalha muitas horas por dia?', 'B', 1.00),
(4, 10, 180, 'Você viaja muito a trabalho?', 'B', 1.00),
(4, 10, 181, 'Você tem estabilidade profissional hoje?', 'B', 1.00),
(4, 10, 182, 'Você deseja morar em outra cidade ou país?', 'B', 1.00),
(4, 10, 183, 'Você prefere uma vida mais urbana ou mais tranquila?', 'B', 1.00),
(4, 10, 184, 'Você prefere empreender ou ter estabilidade CLT?', 'B', 1.00),
(4, 10, 185, 'Você tem interesse em crescer junto com um parceiro?', 'B', 1.00),

-- BLOCO 11 – FINANÇAS (186–194)
(7, 11, 186, 'Você prefere dividir as contas 50/50?', 'B', 1.00),
(7, 11, 187, 'Você se considera financeiramente responsável?', 'B', 1.00),
(7, 11, 188, 'Você tem dívidas grandes atualmente?', 'B', 1.00),
(7, 11, 189, 'Quanto você pode investir por mês em jantares fora?', 'B', 1.00),
(7, 11, 190, 'Quanto você investe por mês em compras para cozinhar em casa?', 'B', 1.00),
(7, 11, 191, 'Quanto você investe por ano em viagens?', 'B', 1.00),
(7, 11, 192, 'Você aceita viajar de forma simples quando necessário?', 'B', 1.00),
(7, 11, 193, 'Suas prioridades de vida (família, carreira, fé, dinheiro) estão claras para você?', 'B', 1.00),
(7, 11, 194, 'Você sente que consegue construir estabilidade financeira com alguém?', 'B', 1.00),

-- BLOCO 12 – FECHAMENTO EMOCIONAL (195–200)
(3, 12, 195, 'Você busca parceria em um relacionamento?', 'B', 1.00),
(3, 12, 196, 'Você quer construir um futuro junto com alguém?', 'B', 1.00),
(3, 12, 197, 'Você sabe resolver problemas em conjunto com o parceiro?', 'B', 1.00),
(3, 12, 198, 'Você valoriza paz no relacionamento?', 'B', 1.00),
(3, 12, 199, 'Você se esforça para manter o relacionamento saudável?', 'B', 1.00),
(3, 12, 200, 'Você acredita no amor como construção diária?', 'B', 1.00);

