//
//  QuestionModel.swift
//  GoToQuizz
//
//  Created by Shivansh Gaur on 24/05/22.
//

import Foundation

// MARK: - QuestionModel - Get response
struct QuestionModel: Codable {
    let data: [QuestionData]
    let error: Bool
    let message: String
}

// MARK: - QuestionData - Contain Question and Options
struct QuestionData: Codable {
    let quiz: Quiz
}

// MARK: - Quiz - Contain Question
struct Quiz: Codable {
    let quizID, noOfCorrectChoice: String
    let quizOptions: [QuizOption]
    let mediaURL: String?
    let quizTitle, quizPassMarks, quizType, relatedTrainingID, relatedTrainingTitle: String
}

// MARK: - QuizOption - Options and Correct Answer
struct QuizOption: Codable {
    let isRight, optionID: Int
    let optionName: String
}
