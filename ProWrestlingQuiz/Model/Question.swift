//
//  Question.swift
//  ProWrestlingQuiz
//
//  Created by Ejaz Merchant on 1/23/18.
//  Copyright © 2018 Ejaz Merchant. All rights reserved.
//

import Foundation

class Question {
    
    let questionText: String
    let answer: Bool
    
    init(text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
}
