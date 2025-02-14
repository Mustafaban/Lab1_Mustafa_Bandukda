//
//  ContentView.swift
//  LabTest1
//
//  Created by mustafa on 12/02/2025.
//

import SwiftUI

struct ContentView: View {
    @State private var currentNumber = Int.random(in: 1...100)
@State private var correctAnswers = 0
@State private var incorrectAnswers = 0
@State private var totalRounds = 0
@State private var showEndAlert = false
@State private var feedback: Bool? = nil
@State private var gameTimer: Timer? = nil

}
VStack(spacing: 20) {
}
Text("Is it prime?")
    .font(.title2)
    .foregroundColor(.gray)

Text("\(currentNumber)")
    .font(.system(size: 70, weight: .bold))
    .padding()
HStack(spacing: 20) {
    Button("Prime") { evaluateAnswer(isPrime: true) }
        .buttonStyle(BasicButtonStyle(color: .green))

    Button("Not Prime") { evaluateAnswer(isPrime: false) }
        .buttonStyle(BasicButtonStyle(color: .red))
}
if let result = feedback {
    Image(systemName: result ? "checkmark.circle.fill" : "xmark.circle.fill")
        .resizable()
        .frame(width: 50, height: 50)
        .foregroundColor(result ? .green : .red)
}
Text("✅ \(correctAnswers) | ❌ \(incorrectAnswers)")
    .font(.headline)
.alert("Game Over", isPresented: $showEndAlert) {
    Button("Restart") { resetGame() }
} message: {
    Text("Correct: \(correctAnswers)\nWrong: \(incorrectAnswers)")
}
func evaluateAnswer(isPrime: Bool) {
    if checkIfPrime(currentNumber) == isPrime {
        correctAnswers += 1
        feedback = true
    } else {
        incorrectAnswers += 1
        feedback = false
    }
    nextRound()
}
