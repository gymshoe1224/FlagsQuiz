//
//  Question.swift
//  FlagsQuiz
//
//  Created by Chris Markiewicz on 1/9/23.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID()
    var text: String
    var isCorrect: Bool
}

struct Question: Identifiable {
    var id = UUID()
    var correctAnswer: Answer
    var incorrectAnswers: [Answer]
}

