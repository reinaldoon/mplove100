-- Enable UUID extension
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- 1. Categories Table
CREATE TABLE categories (
    id              SERIAL PRIMARY KEY,
    name            VARCHAR(100) NOT NULL,
    code            VARCHAR(50) NOT NULL UNIQUE,
    description     TEXT,
    weight_percent  NUMERIC(5,2) NOT NULL,
    created_at      TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Initial Categories
INSERT INTO categories (name, code, weight_percent) VALUES
('Personalidade',        'PERSONALITY',       25.00),
('Estilo de Vida',       'LIFESTYLE',         15.00),
('Valores',              'VALUES',            25.00),
('Futuro',               'FUTURE',            15.00),
('Limites',              'LIMITS',            10.00),
('Sexo & Relacionamento','SEX_RELATIONSHIP',   5.00),
('Finanças',             'FINANCES',           5.00);

-- 2. Questions Table
CREATE TABLE questions (
    id              SERIAL PRIMARY KEY,
    category_id     INT NOT NULL REFERENCES categories(id),
    block_number    INT NOT NULL,
    question_order  INT NOT NULL,
    text_pt         TEXT NOT NULL,
    text_en         TEXT,
    type            VARCHAR(10) NOT NULL CHECK (type IN ('A', 'B', 'C')), -- A=Ideal, B=Self, C=Tolerance
    related_question_id INT REFERENCES questions(id), -- For C questions pointing to A/B pair, or B pointing to A
    is_active       BOOLEAN NOT NULL DEFAULT TRUE,
    question_weight NUMERIC(5,2) NOT NULL DEFAULT 1.00,
    created_at      TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 3. Options Table
CREATE TABLE question_options (
    id              SERIAL PRIMARY KEY,
    question_id     INT NOT NULL REFERENCES questions(id),
    label_pt        VARCHAR(255) NOT NULL,
    label_en        VARCHAR(255),
    value_code      VARCHAR(100) NOT NULL,
    display_order   INT NOT NULL,
    is_critical     BOOLEAN NOT NULL DEFAULT FALSE,
    tolerance_level INT DEFAULT 0, -- 0=Intolerant, 1=Medium, 2=High (Only for C questions or specific options)
    created_at      TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 4. Option Compatibility (The Core Logic)
CREATE TABLE option_compatibility (
    id                  SERIAL PRIMARY KEY,
    question_id         INT NOT NULL REFERENCES questions(id),
    option_a_id         INT NOT NULL REFERENCES question_options(id),
    option_b_id         INT NOT NULL REFERENCES question_options(id),
    compatibility_score INT NOT NULL CHECK (compatibility_score BETWEEN 0 AND 100),
    UNIQUE (question_id, option_a_id, option_b_id)
);

-- 5. Users Table (Extends Auth)
CREATE TABLE profiles (
    id              UUID PRIMARY KEY REFERENCES auth.users(id),
    name            TEXT,
    gender          TEXT, -- 'M', 'F', 'OTHER'
    birthdate       DATE,
    location        TEXT,
    bio             TEXT,
    created_at      TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 6. User Answers
CREATE TABLE user_answers (
    id                  SERIAL PRIMARY KEY,
    user_id             UUID NOT NULL REFERENCES profiles(id),
    question_id         INT NOT NULL REFERENCES questions(id),
    option_id           INT NOT NULL REFERENCES question_options(id),
    created_at          TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    UNIQUE (user_id, question_id)
);

-- 7. Matches (Cache)
CREATE TABLE matches (
    id                      SERIAL PRIMARY KEY,
    user_a_id               UUID NOT NULL REFERENCES profiles(id),
    user_b_id               UUID NOT NULL REFERENCES profiles(id),
    overall_score           NUMERIC(5,2) NOT NULL,
    personality_score       NUMERIC(5,2),
    lifestyle_score         NUMERIC(5,2),
    values_score            NUMERIC(5,2),
    future_score            NUMERIC(5,2),
    limits_score            NUMERIC(5,2),
    sex_relationship_score  NUMERIC(5,2),
    finances_score          NUMERIC(5,2),
    critical_points_count   INT NOT NULL DEFAULT 0,
    boosted                 BOOLEAN NOT NULL DEFAULT FALSE,
    penalized               BOOLEAN NOT NULL DEFAULT FALSE,
    created_at              TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at              TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    UNIQUE (user_a_id, user_b_id)
);

-- 8. Chats
CREATE TABLE chats (
    id              SERIAL PRIMARY KEY,
    user_a_id       UUID NOT NULL REFERENCES profiles(id),
    user_b_id       UUID NOT NULL REFERENCES profiles(id),
    is_unlocked     BOOLEAN NOT NULL DEFAULT FALSE,
    unlocked_at     TIMESTAMP WITH TIME ZONE,
    created_at      TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    UNIQUE (user_a_id, user_b_id)
);

-- 9. Messages
CREATE TABLE messages (
    id              SERIAL PRIMARY KEY,
    chat_id         INT NOT NULL REFERENCES chats(id),
    sender_id       UUID NOT NULL REFERENCES profiles(id),
    content         TEXT NOT NULL,
    read_at         TIMESTAMP WITH TIME ZONE,
    created_at      TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- 10. Matching Rules
CREATE TABLE matching_rules (
    id                  SERIAL PRIMARY KEY,
    code                VARCHAR(100) NOT NULL UNIQUE,
    description         TEXT,
    value_numeric       NUMERIC(10,2),
    value_json          JSONB,
    created_at          TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

INSERT INTO matching_rules (code, description, value_numeric) VALUES
('BOOST_HIGH_CATEGORIES', 'Bonus when 3+ categories >= 90', 5.00),
('PENALIZE_LOW_VALUES',   'Penalty if Values category < 50', -10.00);
