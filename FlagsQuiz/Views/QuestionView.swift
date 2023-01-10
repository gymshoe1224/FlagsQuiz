//
//  QuestionView.swift
//  FlagsQuiz
//
//  Created by Chris Markiewicz on 1/10/23.
//

import SwiftUI

struct QuestionView: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Text("Country Flag Quiz")
                    .foregroundColor(.yellow)
                    .font(.title)
                    .fontWeight(.heavy)
                Spacer()
                Text("1 ount of 3")
                    .foregroundColor(.yellow)
                    .fontWeight(.heavy)
            }
            ProgressBar(progress: 50)
            VStack(spacing: 20) {
                Text("Which country's flag is this?")
                    .font(.title)
                Image("Italy")
                    .resizable()
                    .frame(width: 300, height: 200)
                AnswerRow(answer: Answer(text: "France", isCorrect: false))
                AnswerRow(answer: Answer(text: "Germany", isCorrect: false))
                AnswerRow(answer: Answer(text: "Italy", isCorrect: true))
                AnswerRow(answer: Answer(text: "England", isCorrect: false))
            }
            CustomButton(text: "next")
            Spacer()
        }
        .padding()
        .frame(width: .infinity, height: .infinity)
        .background(.cyan)
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}
