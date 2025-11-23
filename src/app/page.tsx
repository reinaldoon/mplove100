'use client';

import { useState, useEffect } from 'react';
import { motion, AnimatePresence } from 'framer-motion';
import { ArrowRight, Heart } from 'lucide-react';
import Link from 'next/link';

const slides = [
  {
    id: 1,
    title: "Amor com precisão.",
    text: "Pare de tentar a sorte. Encontre alguém que realmente combina com você.",
    icon: <Heart className="w-16 h-16 text-red-500" />
  },
  {
    id: 2,
    title: "100 Questions Method™",
    text: "Nosso algoritmo analisa 7 pilares essenciais para identificar sua verdadeira compatibilidade.",
    icon: <div className="text-4xl font-serif">100</div>
  },
  {
    id: 3,
    title: "Zero superficialidade.",
    text: "Sem fotos no início. Conexão emocional primeiro.",
    icon: <div className="w-16 h-16 border-2 border-white rounded-full flex items-center justify-center">?</div>
  }
];

export default function Onboarding() {
  const [showSplash, setShowSplash] = useState(true);
  const [currentSlide, setCurrentSlide] = useState(0);

  useEffect(() => {
    const timer = setTimeout(() => setShowSplash(false), 2500);
    return () => clearTimeout(timer);
  }, []);

  const nextSlide = () => {
    if (currentSlide < slides.length - 1) {
      setCurrentSlide(prev => prev + 1);
    }
  };

  if (showSplash) {
    return (
      <div className="flex flex-col items-center justify-center h-screen bg-black text-white">
        <motion.div
          initial={{ opacity: 0, scale: 0.8 }}
          animate={{ opacity: 1, scale: 1 }}
          exit={{ opacity: 0 }}
          transition={{ duration: 1 }}
          className="text-center"
        >
          <h1 className="text-4xl font-serif tracking-widest mb-2">MPLove100</h1>
          <p className="text-xs uppercase tracking-[0.3em] text-gray-400">100 Questions. One Perfect Match.</p>
        </motion.div>
      </div>
    );
  }

  return (
    <div className="flex flex-col items-center justify-between h-screen bg-black text-white p-8 py-12">
      <div className="w-full flex justify-center mt-10">
        <AnimatePresence mode="wait">
          <motion.div
            key={slides[currentSlide].id}
            initial={{ opacity: 0, x: 50 }}
            animate={{ opacity: 1, x: 0 }}
            exit={{ opacity: 0, x: -50 }}
            transition={{ duration: 0.5 }}
            className="flex flex-col items-center text-center space-y-8"
          >
            <div className="w-40 h-40 bg-gray-900 rounded-full flex items-center justify-center mb-4 shadow-[0_0_30px_rgba(255,255,255,0.1)]">
              {slides[currentSlide].icon}
            </div>
            <h2 className="text-3xl font-serif font-bold">{slides[currentSlide].title}</h2>
            <p className="text-gray-400 max-w-xs leading-relaxed">{slides[currentSlide].text}</p>
          </motion.div>
        </AnimatePresence>
      </div>

      <div className="w-full flex flex-col items-center space-y-6 mb-8">
        <div className="flex space-x-2">
          {slides.map((_, idx) => (
            <div
              key={idx}
              className={`h-1.5 rounded-full transition-all duration-300 ${idx === currentSlide ? 'w-8 bg-white' : 'w-2 bg-gray-700'}`}
            />
          ))}
        </div>

        {currentSlide < slides.length - 1 ? (
          <button
            onClick={nextSlide}
            className="w-full max-w-xs bg-white text-black font-bold py-4 rounded-full flex items-center justify-center space-x-2 hover:bg-gray-200 transition-colors"
          >
            <span>Continuar</span>
            <ArrowRight size={20} />
          </button>
        ) : (
          <Link href="/questionnaire" className="w-full max-w-xs">
            <button className="w-full bg-gradient-to-r from-purple-600 to-pink-600 text-white font-bold py-4 rounded-full flex items-center justify-center space-x-2 hover:opacity-90 transition-opacity shadow-lg shadow-purple-900/50">
              <span>Começar</span>
            </button>
          </Link>
        )}
      </div>
    </div>
  );
}
