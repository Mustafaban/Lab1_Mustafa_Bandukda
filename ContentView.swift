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
