import { CategoryCode } from '@/types';

export interface QuestionDef {
    id: number;
    text: string;
    category: CategoryCode;
    block: number;
    type: 'A' | 'B' | 'C';
    options: { label: string; value: string; tolerance?: number }[];
    relatedId?: number; // For C questions pointing to A
}

export const QUESTIONS: QuestionDef[] = [
    // --- BLOCK 1: IDENTITY (A) ---
    {
        id: 1,
        text: "A pessoa dos seus sonhos é homem, mulher ou tanto faz?",
        category: 'PERSONALITY', // Using PERSONALITY as a catch-all for Identity for now
        block: 1,
        type: 'A',
        options: [
            { label: "Homem", value: "MALE" },
            { label: "Mulher", value: "FEMALE" },
            { label: "Tanto faz", value: "BOTH" }
        ]
    },
    // --- BLOCK 1: IDENTITY (B) ---
    {
        id: 101,
        text: "Você é homem, mulher ou outro?",
        category: 'PERSONALITY',
        block: 1,
        type: 'B',
        options: [
            { label: "Homem", value: "MALE" },
            { label: "Mulher", value: "FEMALE" },
            { label: "Outro", value: "OTHER" }
        ]
    },

    // --- BLOCK 11: FINANCES (A) ---
    {
        id: 89,
        text: "Quanto a pessoa dos seus sonhos pode investir por mês em jantares fora?",
        category: 'FINANCES',
        block: 11,
        type: 'A',
        options: [
            { label: "Até R$200", value: "LOW" },
            { label: "R$200–500", value: "MEDIUM" },
            { label: "R$500–1.000", value: "HIGH" },
            { label: "Acima de R$1.000", value: "VERY_HIGH" },
            { label: "Eu não me importo se a pessoa não puder investir pouco ou nada", value: "TOLERANT_LOW" },
            { label: "Eu posso pagar quando necessário", value: "PROVIDER" }
        ]
    },
    // --- BLOCK 11: FINANCES (B) ---
    {
        id: 189,
        text: "Quanto VOCÊ pode investir por mês em jantares fora?",
        category: 'FINANCES',
        block: 11,
        type: 'B',
        options: [
            { label: "Até R$200", value: "LOW" },
            { label: "R$200–500", value: "MEDIUM" },
            { label: "R$500–1.000", value: "HIGH" },
            { label: "Acima de R$1.000", value: "VERY_HIGH" },
            { label: "Eu não tenho disponibilidade financeira para isso", value: "NONE" }
        ]
    },
    // --- BLOCK 11: FINANCES (C) ---
    {
        id: 289,
        text: "Você aceita alguém que invista menos do que você?",
        category: 'FINANCES',
        block: 11,
        type: 'C',
        relatedId: 89,
        options: [
            { label: "Sim", value: "YES", tolerance: 2 },
            { label: "Depende", value: "MAYBE", tolerance: 1 },
            { label: "Não", value: "NO", tolerance: 0 }
        ]
    }
];
