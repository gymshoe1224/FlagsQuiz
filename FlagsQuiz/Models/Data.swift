//
//  Data.swift
//  FlagsQuiz
//
//  Created by Chris Markiewicz on 1/10/23.
//

import Foundation

struct Data {
    var questions = [Question]()
    var countries = ["Angola", "Austria", "China", "Egypt", "England", "Estonia", "France", "Germany", "Ghana", "Greece", "India", "Israel", "Italy", "Norway", "Pakistan", "Peru", "Poland", "Portugal", "Qatar", "Saudi Arabia", "South Africa", "Spain", "Sweden", "Ukraine", "United States"]
    init() {
        for i in 0..<countries.count {
            var falseCountries = countries
            falseCountries.remove(at: falseCountries.firstIndex(of: countries[i])!)
            let threeFalseCountries = falseCountries.prefix(3)
            questions.append(
                Question(
                    correctAnswer:
                        Answer(text: countries[i], isCorrect: true),
                    incorrectAnswers: [
                        Answer(text: String(threeFalseCountries[0]), isCorrect: false),
                        Answer(text: String(threeFalseCountries[1]), isCorrect: false),
                        Answer(text: String(threeFalseCountries[2]), isCorrect: false)]
                )
            )
        }
    }
}
