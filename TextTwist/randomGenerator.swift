//
//  randomGenerator.swift
//  TextTwist
//
//  Created by Mariel Hoepelman on 8/5/19.
//  Copyright © 2019 C4Q . All rights reserved.
//

import Foundation
import UIKit

class TextTwistModel {
    //DONT reference UI elements in model
    var guessed:[String] = []
    
    let randomInfo = WordData.allInfo.randomElement()!
    
    func checkGuess(userGuess: String) -> Bool {
        return randomInfo.words.contains(userGuess)
    }
    
    func addToGuessed(guessedWord: String)->Void{
        guessed.append(guessedWord)
    }
}
