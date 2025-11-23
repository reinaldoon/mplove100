'use client';

import { useState, Suspense } from 'react';
import { Send, AlertTriangle, ArrowLeft } from 'lucide-react';
import Link from 'next/link';
import { useSearchParams } from 'next/navigation';

function ChatContent() {
    const searchParams = useSearchParams();
    const matchId = searchParams.get('id');

    const [messages, setMessages] = useState([
        { id: 1, sender: 'them', text: 'Olá! Vi que temos uma compatibilidade muito alta.', time: '10:00' },
        { id: 2, sender: 'me', text: 'Oi! Verdade, 92% é impressionante. O que mais chamou sua atenção?', time: '10:02' },
    ]);
    const [input, setInput] = useState('');

    const handleSend = () => {
        if (!input.trim()) return;
        setMessages(prev => [...prev, { id: Date.now(), sender: 'me', text: input, time: new Date().toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' }) }]);
        setInput('');

        // Mock reply
        setTimeout(() => {
            setMessages(prev => [...prev, { id: Date.now() + 1, sender: 'them', text: 'Acho que nossos valores sobre família e futuro bateram muito. É raro encontrar isso.', time: new Date().toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' }) }]);
        }, 2000);
    };

    return (
        <div className="flex flex-col h-screen bg-black text-white">
            {/* Header */}
            <div className="p-4 border-b border-gray-800 flex items-center space-x-4 bg-gray-900/50 backdrop-blur-md sticky top-0 z-10">
                <Link href={`/profile/${matchId}`} className="text-gray-400 hover:text-white">
                    <ArrowLeft size={24} />
                </Link>
                <div>
                    <h1 className="font-serif font-bold">Perfil #{matchId}</h1>
                    <div className="text-xs text-green-400">Compatibilidade 92%</div>
                </div>
            </div>

            {/* Messages */}
            <div className="flex-1 overflow-y-auto p-4 space-y-4">
                <div className="flex justify-center mb-6">
                    <div className="bg-gray-900/80 text-gray-500 text-xs px-4 py-2 rounded-full flex items-center space-x-2 border border-gray-800">
                        <AlertTriangle size={12} />
                        <span>Por segurança, fotos e contatos não são permitidos.</span>
                    </div>
                </div>

                {messages.map((msg) => (
                    <div key={msg.id} className={`flex ${msg.sender === 'me' ? 'justify-end' : 'justify-start'}`}>
                        <div
                            className={`max-w-[80%] p-4 rounded-2xl ${msg.sender === 'me'
                                    ? 'bg-purple-600 text-white rounded-tr-sm'
                                    : 'bg-gray-800 text-gray-200 rounded-tl-sm'
                                }`}
                        >
                            <p className="text-sm leading-relaxed">{msg.text}</p>
                            <div className={`text-[10px] mt-1 opacity-50 ${msg.sender === 'me' ? 'text-right' : 'text-left'}`}>
                                {msg.time}
                            </div>
                        </div>
                    </div>
                ))}
            </div>

            {/* Input */}
            <div className="p-4 bg-gray-900 border-t border-gray-800">
                <div className="flex items-center space-x-2 bg-black rounded-full px-4 py-2 border border-gray-800 focus-within:border-purple-500 transition-colors">
                    <input
                        type="text"
                        value={input}
                        onChange={(e) => setInput(e.target.value)}
                        onKeyDown={(e) => e.key === 'Enter' && handleSend()}
                        placeholder="Digite sua mensagem..."
                        className="flex-1 bg-transparent outline-none text-sm placeholder-gray-600"
                    />
                    <button
                        onClick={handleSend}
                        className={`p-2 rounded-full transition-colors ${input.trim() ? 'text-purple-500 hover:bg-purple-500/10' : 'text-gray-600'}`}
                    >
                        <Send size={20} />
                    </button>
                </div>
            </div>
        </div>
    );
}

export default function ChatPage() {
    return (
        <Suspense fallback={<div className="h-screen bg-black flex items-center justify-center text-white">Loading...</div>}>
            <ChatContent />
        </Suspense>
    );
}
