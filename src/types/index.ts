export type CategoryCode =
    | 'PERSONALITY'
    | 'LIFESTYLE'
    | 'VALUES'
    | 'FUTURE'
    | 'LIMITS'
    | 'SEX_RELATIONSHIP'
    | 'FINANCES';

export interface Category {
    id: number;
    name: string;
    code: CategoryCode;
    weight_percent: number;
}

export interface Question {
    id: number;
    category_id: number;
    block_number: number;
    question_order: number;
    text_pt: string;
    type: 'A' | 'B' | 'C';
    question_weight: number;
    options?: Option[]; // Optional for when we fetch with options
}

export interface Option {
    id: number;
    question_id: number;
    label_pt: string;
    value_code: string;
    display_order: number;
    is_critical: boolean;
    tolerance_level: number;
}

export interface MatchResult {
    overall_score: number;
    category_scores: Record<CategoryCode, number>;
    critical_points_count: number;
    boosted: boolean;
    penalized: boolean;
}
