//
//  ViewController.swift
//  TextTwist
//
//  Created by C4Q  on 10/23/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {
//    var textField: UITextField!
    var model = TextTwistModel()
    var info: TestTwistInfo!
    
    //label outlet
    @IBOutlet weak var lettersLeft: UILabel!
    //text field outlet
    @IBOutlet weak var userInput: UITextField!
    //text field action
    @IBOutlet weak var threeLetter: UITextView!
    
    
    @IBOutlet weak var fourLetter: UITextView!
    
    
    @IBOutlet weak var fiveLetter: UITextView!
    
    
    @IBOutlet weak var sixLetter: UITextView!
    
    @IBAction func userGuess(_ sender: UITextField) {
       
    }
    
    private func addToTxtView(word: String) -> Void{
        let length = word.count
        switch length {
        case 3:
            threeLetter.text += "\(word)\n"
        case 4:
            fourLetter.text += "\(word)\n"
        case 5:
            fiveLetter.text += "\(word)\n"
        case 6:
            sixLetter.text += "\(word)\n"
        default:
            print("")
        }
    }
    
    
    //create outlets for all texts fiels and make switch statment case word.count
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if model.checkGuess(userGuess: textField.text ?? "") {
            addToTxtView(word: textField.text ?? "")
            model.addToGuessed(guessedWord: textField.text ?? "")
            textField.text = ""
            return true
        } else {
            lettersLeft.text = "Incorrect"
            textField.text = ""
            return true
        }
        
    }
   
    override func viewDidLoad() {
        // Do any additional setup after loading the view, typically from a nib
        super.viewDidLoad()
        self.userInput.delegate = self
        self.info = model.randomInfo
        self.lettersLeft.text = info.letters
        self.threeLetter.text = ""
        
        }
    
}


