# 🗄️ Setup do Banco de Dados - MPLove100

## Passo 1: Acessar o SQL Editor

1. Acesse: https://supabase.com/dashboard/project/cnnhwreztdjqlebbuobo
2. No menu lateral, clique em **SQL Editor**
3. Clique em **New Query**

---

## Passo 2: Executar o Schema Principal

Copie e cole o conteúdo do arquivo `schema.sql` no editor e clique em **Run**.

Isso criará:
- ✅ Tabela `categories` (7 categorias com pesos)
- ✅ Tabela `questions`
- ✅ Tabela `question_options`
- ✅ Tabela `option_compatibility`
- ✅ Tabela `profiles`
- ✅ Tabela `user_answers`
- ✅ Tabela `matches`
- ✅ Tabela `chats`
- ✅ Tabela `messages`
- ✅ Tabela `matching_rules`

---

## Passo 3: Executar o Seed (Perguntas Iniciais)

Agora execute o arquivo `seed.sql` que contém as primeiras perguntas do sistema.

---

## Passo 4: Verificar

Execute esta query para confirmar:

```sql
SELECT 
  (SELECT COUNT(*) FROM categories) as total_categories,
  (SELECT COUNT(*) FROM questions) as total_questions,
  (SELECT COUNT(*) FROM question_options) as total_options;
```

**Resultado esperado:**
- `total_categories`: 7
- `total_questions`: ~20 (inicialmente)
- `total_options`: ~100+

---

## ✅ Próximo Passo

Depois de executar, me avise e vou:
1. Popular o resto das 100 perguntas
2. Implementar as queries reais no algoritmo
3. Criar o sistema de autenticação
