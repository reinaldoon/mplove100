'use client';

import { useState } from 'react';
import { motion } from 'framer-motion';
import { Lock, Check, ArrowLeft, MessageCircle } from 'lucide-react';
import Link from 'next/link';
import { useParams, useRouter } from 'next/navigation';

export default function ProfilePage() {
    const params = useParams();
    const router = useRouter();
    const [isUnlocked, setIsUnlocked] = useState(false);
    const [showPayment, setShowPayment] = useState(false);

    const matchData = {
        id: params.id,
        score: 92,
        categories: [
            { name: 'Personalidade', score: 94 },
            { name: 'Valores', score: 88 },
            { name: 'Estilo de Vida', score: 97 },
            { name: 'Limites', score: 82 },
            { name: 'Futuro', score: 90 },
            { name: 'Finanças', score: 85 },
            { name: 'Sexo & Rel.', score: 91 },
        ]
    };

    const handleUnlock = () => {
        // Mock payment flow
        setTimeout(() => {
            setIsUnlocked(true);
            setShowPayment(false);
            router.push(`/chat?id=${params.id}`);
        }, 1500);
    };

    return (
        <div className="min-h-screen bg-black text-white p-6 pb-24">
            {/* Header */}
            <div className="flex items-center justify-between mb-8">
                <Link href="/questionnaire" className="p-2 bg-gray-900 rounded-full">
                    <ArrowLeft size={20} />
                </Link>
                <div className="text-center">
                    <div className="text-xs text-gray-500 uppercase tracking-widest">Compatibilidade</div>
                    <div className="text-3xl font-serif text-green-400">{matchData.score}%</div>
                </div>
                <div className="w-10" /> {/* Spacer */}
            </div>

            {/* Profile Card */}
            <div className="bg-gray-900 rounded-2xl p-6 border border-gray-800 mb-8 relative overflow-hidden">
                <div className="absolute top-0 right-0 p-4 opacity-10">
                    <div className="text-9xl font-serif">92</div>
                </div>

                <h1 className="text-2xl font-serif mb-2">Perfil #{matchData.id}</h1>
                <p className="text-gray-400 text-sm mb-6">
                    Você e essa pessoa têm alto nível de sintonia emocional e compatibilidade prática.
                </p>

                {/* Compatibility Bars */}
                <div className="space-y-4">
                    {matchData.categories.map((cat) => (
                        <div key={cat.name}>
                            <div className="flex justify-between text-xs mb-1">
                                <span className="text-gray-400">{cat.name}</span>
                                <span className="font-bold">{cat.score}%</span>
                            </div>
                            <div className="h-2 bg-gray-800 rounded-full overflow-hidden">
                                <motion.div
                                    initial={{ width: 0 }}
                                    animate={{ width: `${cat.score}%` }}
                                    transition={{ duration: 1, delay: 0.2 }}
                                    className={`h-full rounded-full ${cat.score > 90 ? 'bg-green-500' : cat.score > 70 ? 'bg-yellow-500' : 'bg-red-500'}`}
                                />
                            </div>
                        </div>
                    ))}
                </div>
            </div>

            {/* Action Button */}
            <div className="fixed bottom-8 left-0 right-0 px-6">
                <button
                    onClick={() => setShowPayment(true)}
                    className="w-full bg-gradient-to-r from-purple-600 to-pink-600 text-white font-bold py-4 rounded-xl shadow-lg shadow-purple-900/50 flex items-center justify-center space-x-2"
                >
                    <Lock size={20} />
                    <span>Abrir Chat por R$ 3,00</span>
                </button>
            </div>

            {/* Payment Modal */}
            {showPayment && (
                <div className="fixed inset-0 bg-black/90 backdrop-blur-sm z-50 flex items-end sm:items-center justify-center">
                    <motion.div
                        initial={{ y: "100%" }}
                        animate={{ y: 0 }}
                        className="bg-gray-900 w-full max-w-md rounded-t-3xl sm:rounded-3xl p-6 border-t sm:border border-gray-800"
                    >
                        <div className="flex justify-between items-center mb-6">
                            <h3 className="text-xl font-serif">Desbloquear Conversa</h3>
                            <button onClick={() => setShowPayment(false)} className="text-gray-500">✕</button>
                        </div>

                        <div className="space-y-4 mb-6">
                            <div className="p-4 bg-black rounded-xl border border-gray-800 flex justify-between items-center">
                                <span className="text-gray-300">Valor</span>
                                <span className="text-xl font-bold text-white">R$ 3,00</span>
                            </div>
                            <p className="text-xs text-gray-500 text-center">*A conversa ficará disponível para sempre.*</p>
                        </div>

                        <div className="space-y-3">
                            <button
                                onClick={handleUnlock}
                                className="w-full bg-green-600 hover:bg-green-500 text-white font-bold py-3 rounded-xl flex items-center justify-center space-x-2 transition-colors"
                            >
                                <span>Pagar com Pix</span>
                            </button>
                            <button className="w-full bg-gray-800 hover:bg-gray-700 text-white font-bold py-3 rounded-xl transition-colors">
                                Pagar com Cartão
                            </button>
                        </div>
                    </motion.div>
                </div>
            )}
        </div>
    );
}
