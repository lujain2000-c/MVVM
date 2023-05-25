//
//  GameModel.swift
//  MathGameMVVM
//
//  Created by لجين إبراهيم الكنهل on 05/11/1444 AH.
//

import Foundation
struct GameModel: Identifiable{
    var id = UUID()
    var correctAnswer: Int
    var firstNumber: Int
    var secondNumber: Int
    
}
