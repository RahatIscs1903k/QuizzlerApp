//
//  Question.swift
//  QuizzlerApp
//
//  Created by Kaspi on 16.04.2023.
//

import Foundation

struct Question {
    var question: String
    var answer: String
    
    
    init(q: String, a: String) {
        question = q
        answer = a
    }
}
