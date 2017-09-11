//
//  ViewController.swift
//  CalculatorApp_HW2
//
//  Created by Chloe Houlihan on 9/7/17.
//  Copyright © 2017 Chloe Houlihan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var hasOperatorBeenPressed = false
    var previousValue = 1.0
    var answer = 1.0
    var previousOperation = "+"
    var currentValue = 1.0
    
    
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBOutlet weak var answerDisplay: UILabel!
    
    @IBAction func buttonPress(_ sender: UIButton) {
        if sender.currentTitle == "C" {
            displayLabel.text = ""
            hasOperatorBeenPressed = false
            answerDisplay.text = ""
            previousValue = 1.0
        } else {
        displayLabel.text = displayLabel.text! + sender.currentTitle!
        answerDisplay.text = answerDisplay.text! + sender.currentTitle!
        }
    }
    
    
    @IBAction func pressOperation(_ sender: UIButton) {
        
        let computing = Compute()
        
         if hasOperatorBeenPressed == false {
            previousValue = Double(answerDisplay.text!)!
            hasOperatorBeenPressed = true
            answerDisplay.text = ""
            previousOperation = sender.currentTitle!
            displayLabel.text = displayLabel.text! + sender.currentTitle!
        } else if hasOperatorBeenPressed == true && previousOperation == "=" {
            previousValue = Double(answerDisplay.text!)!
            previousOperation = sender.currentTitle!
            displayLabel.text = displayLabel.text! + sender.currentTitle!
            answerDisplay.text = ""
        } else if hasOperatorBeenPressed == true && answerDisplay.text == "" {
            
        } else {
            currentValue = Double(answerDisplay.text!)!
            switch previousOperation {
                case "+":
                    answer = computing.add(a: previousValue, b: currentValue)
                    answerDisplay.text = String(answer)
                case "−":
                    answer = computing.subtract(a: previousValue, b: currentValue)
                    answerDisplay.text = String(answer)
                case "÷":
                    answer = computing.divide(a: previousValue, b: currentValue)
                    answerDisplay.text = String(answer)
                case "×":
                    answer = computing.multiply(a: previousValue, b: currentValue)
                    answerDisplay.text = String(answer)
                default:
                    print("did not work")
            }
            previousValue = answer
            previousOperation = sender.currentTitle!
    }
}

    
    @IBAction func changeSign(_ sender: UIButton) {
        if displayLabel.text != "" {
            currentValue = Double(displayLabel.text!)!
            currentValue *= -1
        }
        else {
            
        }
        displayLabel.text = String(currentValue)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

