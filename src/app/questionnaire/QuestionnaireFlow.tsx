'use client';

import { useState, useEffect } from 'react';
import { motion, AnimatePresence } from 'framer-motion';
import { questionService } from '@/lib/services/questions';
import { answerService } from '@/lib/services/answers';
import { Question } from '@/types';
import { ArrowRight, Loader2 } from 'lucide-react';
import Link from 'next/link';
import { useAuth } from '@/context/AuthContext';
import { useRouter } from 'next/navigation';

type Phase = 'A' | 'PREVIEW' | 'B' | 'C' | 'MATCH';

export default function QuestionnaireFlow() {
    const { user, loading: authLoading } = useAuth();
    const router = useRouter();

    const [phase, setPhase] = useState<Phase>('A');
    const [currentQuestionIndex, setCurrentQuestionIndex] = useState(0);
    const [answers, setAnswers] = useState<Record<number, string>>({});

    const [questionsA, setQuestionsA] = useState<Question[]>([]);
    const [questionsB, setQuestionsB] = useState<Question[]>([]);
    const [questionsC, setQuestionsC] = useState<Question[]>([]);
    const [loading, setLoading] = useState(true);

    // Matches state
    const [matches, setMatches] = useState<any[]>([]);
    const [calculating, setCalculating] = useState(false);

    // Load from LocalStorage on mount for instant feedback
    useEffect(() => {
        if (typeof window !== 'undefined') {
            const savedAnswers = localStorage.getItem('mplove_answers');
            if (savedAnswers) {
                try {
                    const parsed = JSON.parse(savedAnswers);
                    setAnswers(parsed);
                } catch (e) {
                    console.error('Failed to parse local answers', e);
                }
            }
        }
    }, []);

    useEffect(() => {
        if (!authLoading && !user) {
            router.push('/login');
            return;
        }

        async function loadData() {
            try {
                // 1. Load Questions
                const [qA, qB, qC] = await Promise.all([
                    questionService.fetchQuestionsByType('A'),
                    questionService.fetchQuestionsByType('B'),
                    questionService.fetchQuestionsByType('C')
                ]);
                setQuestionsA(qA);
                setQuestionsB(qB);
                setQuestionsC(qC);

                // 2. Load User Answers to restore progress (DB is source of truth)
                if (user) {
                    const { data: userAnswers } = await answerService.getUserAnswers(user.id);

                    // Get local answers to ensure we don't lose progress if DB save failed
                    let localAnswers: Record<number, string> = {};
                    if (typeof window !== 'undefined') {
                        try {
                            localAnswers = JSON.parse(localStorage.getItem('mplove_answers') || '{}');
                        } catch (e) {
                            console.error('Error parsing local storage', e);
                        }
                    }

                    const dbAnswersMap: Record<number, string> = {};
                    if (userAnswers) {
                        userAnswers.forEach((ans: any) => {
                            dbAnswersMap[ans.question_id] = 'ANSWERED';
                        });
                    }

                    // Merge: DB overwrites Local (if we want to enforce server state), 
                    // BUT for "unsaved" progress, we want Local to fill gaps.
                    // Let's trust Local for "latest" state if DB is missing it.
                    const mergedAnswers = { ...localAnswers, ...dbAnswersMap };

                    setAnswers(mergedAnswers);
                    // Update local storage to match this merged state
                    localStorage.setItem('mplove_answers', JSON.stringify(mergedAnswers));

                    // Determine phase and index based on MERGED answers
                    const countA = qA.filter(q => mergedAnswers[q.id]).length;
                    const countB = qB.filter(q => mergedAnswers[q.id]).length;

                    if (countA < qA.length) {
                        setPhase('A');
                        setCurrentQuestionIndex(countA);
                    } else if (countB < qB.length) {
                        setPhase('B');
                        setCurrentQuestionIndex(countB);
                    } else {
                        setPhase('MATCH');
                    }
                }
            } catch (error) {
                console.error('Failed to load data', error);
            } finally {
                setLoading(false);
            }
        }

        if (user) {
            loadData();
        }
    }, [user, authLoading, router]);

    // Matching effect
    useEffect(() => {
        if (phase === 'MATCH' && user) {
            setCalculating(true);
            import('@/lib/services/matching').then(async ({ matchingService }) => {
                const results = await matchingService.findMatches(user.id);
                setMatches(results);
                setCalculating(false);
            });
        }
    }, [phase, user]);

    const currentQuestions = phase === 'A' ? questionsA : phase === 'B' ? questionsB : questionsC;
    const currentQuestion = currentQuestions[currentQuestionIndex];

    const progress = currentQuestions.length > 0
        ? ((currentQuestionIndex + 1) / currentQuestions.length) * 100
        : 0;

    const handleAnswer = async (optionId: number, valueCode: string) => {
        if (!user) return;

        // Optimistic update
        const newAnswers = { ...answers, [currentQuestion.id]: valueCode };
        setAnswers(newAnswers);
        localStorage.setItem('mplove_answers', JSON.stringify(newAnswers));

        // Save to DB
        try {
            await answerService.saveAnswer(user.id, currentQuestion.id, optionId);
        } catch (error) {
            console.error('Failed to save answer', error);
        }

        if (currentQuestionIndex < currentQuestions.length - 1) {
            setCurrentQuestionIndex(prev => prev + 1);
        } else {
            // End of current phase
            if (phase === 'A') {
                setPhase('PREVIEW');
            } else if (phase === 'B') {
                setPhase('MATCH');
            }
        }
    };

    const handleBack = () => {
        if (currentQuestionIndex > 0) {
            setCurrentQuestionIndex(prev => prev - 1);
        } else if (phase === 'B') {
            // Go back to Preview or last question of A? 
            // Usually Preview is a transition screen, so maybe back to Preview
            setPhase('PREVIEW');
        }
    };

    if (loading || authLoading) {
        return (
            <div className="flex items-center justify-center h-screen bg-black text-white">
                <Loader2 className="animate-spin text-purple-500" size={48} />
            </div>
        );
    }

    if (phase === 'PREVIEW') {
        return (
            <div className="flex flex-col items-center justify-center h-screen bg-black text-white p-8 text-center space-y-8">
                <motion.div
                    initial={{ opacity: 0, scale: 0.9 }}
                    animate={{ opacity: 1, scale: 1 }}
                    className="space-y-6"
                >
                    <h2 className="text-3xl font-serif text-purple-400">Perfil Ideal Criado</h2>
                    <div className="text-6xl font-bold">57</div>
                    <p className="text-xl text-gray-300">Pessoas compatíveis encontradas.</p>
                    <p className="text-gray-500 max-w-md mx-auto">
                        Agora, para calcular a compatibilidade real (Expectativa vs Realidade), precisamos conhecer <strong>VOCÊ</strong>.
                    </p>

                    <div className="flex gap-4">
                        <button
                            onClick={() => setPhase('A')} // Go back to check answers
                            className="text-gray-400 hover:text-white underline"
                        >
                            Revisar Respostas
                        </button>
                        <button
                            onClick={() => { setPhase('B'); setCurrentQuestionIndex(0); }}
                            className="bg-white text-black font-bold py-4 px-8 rounded-full hover:bg-gray-200 transition-colors"
                        >
                            Responder Sobre Mim
                        </button>
                    </div>
                </motion.div>
            </div>
        );
    }

    if (phase === 'MATCH') {
        return (
            <div className="flex flex-col items-center justify-center h-screen bg-black text-white p-8 text-center space-y-8">
                <motion.div
                    initial={{ opacity: 0, y: 20 }}
                    animate={{ opacity: 1, y: 0 }}
                    className="space-y-6 w-full max-w-md"
                >
                    <h2 className="text-3xl font-serif text-green-400">Compatibilidade Calculada!</h2>

                    {calculating ? (
                        <div className="flex flex-col items-center space-y-4">
                            <Loader2 className="animate-spin text-green-400" size={32} />
                            <p className="text-gray-300">Analisando respostas...</p>
                        </div>
                    ) : (
                        <>
                            <p className="text-gray-300">Encontramos {matches.length} matches para você.</p>

                            <div className="grid gap-4 w-full text-left max-h-[60vh] overflow-y-auto">
                                {matches.map((match) => (
                                    <div key={match.userId} className="bg-gray-900 p-4 rounded-xl border border-gray-800 flex justify-between items-center">
                                        <div>
                                            <div className="flex items-center space-x-2">
                                                <span className="text-green-400 font-bold text-xl">{Math.round(match.overallScore)}%</span>
                                                <span className="text-gray-400 text-sm">Perfil</span>
                                            </div>
                                            <div className="text-gray-500 text-xs mt-1">
                                                P: {Math.round(match.categoryScores.PERSONALITY)}% • V: {Math.round(match.categoryScores.VALUES)}%
                                            </div>
                                        </div>
                                        <Link href={`/profile/${match.userId}`}>
                                            <button className="bg-purple-600 text-white px-4 py-2 rounded-lg text-sm font-bold">Ver</button>
                                        </Link>
                                    </div>
                                ))}
                                {matches.length === 0 && (
                                    <div className="text-center text-gray-500 py-8">
                                        Nenhum match encontrado ainda. Convide amigos!
                                    </div>
                                )}
                            </div>
                        </>
                    )}
                </motion.div>
            </div>
        );
    }

    if (!currentQuestion) return null;

    return (
        <div className="flex flex-col h-screen bg-black text-white max-w-2xl mx-auto">
            {/* Header / Progress */}
            <div className="p-6 pt-12">
                <div className="flex justify-between text-xs text-gray-500 uppercase tracking-wider mb-2">
                    <span>{phase === 'A' ? 'Perfil Ideal' : 'Sobre Você'}</span>
                    <span>{Math.round(progress)}%</span>
                </div>
                <div className="h-1 bg-gray-800 rounded-full overflow-hidden">
                    <motion.div
                        className="h-full bg-purple-500"
                        initial={{ width: 0 }}
                        animate={{ width: `${progress}%` }}
                        transition={{ duration: 0.3 }}
                    />
                </div>
            </div>

            {/* Question Card */}
            <div className="flex-1 flex flex-col justify-center p-6 space-y-8">
                <AnimatePresence mode="wait">
                    <motion.div
                        key={currentQuestion.id}
                        initial={{ opacity: 0, x: 20 }}
                        animate={{ opacity: 1, x: 0 }}
                        exit={{ opacity: 0, x: -20 }}
                        transition={{ duration: 0.3 }}
                        className="space-y-8"
                    >
                        <div className="space-y-2">
                            <span className="text-purple-400 text-sm font-bold tracking-wider">PERGUNTA {currentQuestionIndex + 1}</span>
                            <h2 className="text-2xl md:text-3xl font-serif leading-tight">
                                {currentQuestion.text_pt}
                            </h2>
                        </div>

                        <div className="space-y-3">
                            {currentQuestion.options?.map((opt) => (
                                <button
                                    key={opt.id}
                                    onClick={() => handleAnswer(opt.id, opt.value_code)}
                                    className="w-full text-left p-4 rounded-xl border border-gray-800 hover:border-purple-500 hover:bg-gray-900 transition-all group flex justify-between items-center"
                                >
                                    <span className="text-gray-300 group-hover:text-white transition-colors">{opt.label_pt}</span>
                                    <ArrowRight className="opacity-0 group-hover:opacity-100 text-purple-500 transition-opacity" size={20} />
                                </button>
                            ))}
                        </div>

                        {/* Back Button */}
                        <div className="flex justify-start pt-4">
                            <button
                                onClick={handleBack}
                                disabled={currentQuestionIndex === 0 && phase === 'A'}
                                className={`text-sm text-gray-500 hover:text-white transition-colors ${currentQuestionIndex === 0 && phase === 'A' ? 'opacity-0 pointer-events-none' : ''}`}
                            >
                                ← Voltar
                            </button>
                        </div>

                    </motion.div>
                </AnimatePresence>
            </div>
        </div>
    );
}
