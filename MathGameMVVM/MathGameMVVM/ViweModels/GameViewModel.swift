//
//  GameViewModel.swift
//  MathGameMVVM
//
//  Created by لجين إبراهيم الكنهل on 05/11/1444 AH.
//

import Foundation
extension ContentView{
    @MainActor class  GameViewModel: ObservableObject{
        @Published var allAnswer: [GameModel] = []
        @Published var score: Int = 0
        @Published var num1: Int = 0
        @Published var num2: Int = 0
        @Published var answerCorrect: Int = 0
       
        func AnswerIsCorrect(answer: Int){
           if answer == answerCorrect {
               score += 1
           }
        }
        
        func Game(){
             num1 = Int.random(in: 0...50)
             num2 = Int.random(in: 0...50)
            answerCorrect = num1 + num2
            var newItem = GameModel(correctAnswer: answerCorrect, firstNumber: num2, secondNumber: num2)
            allAnswer.insert(newItem, at: 0)
            var allChoice = [num1 + num2]
            
            for _ in 0...2{
                allChoice.append(Int.random(in: 0...100 ))
            }
            var choiceList = allChoice.shuffled()
        }

  
        }
    }

