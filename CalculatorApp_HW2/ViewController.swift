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
        }
    }
    
    
    @IBAction func pressOperation(_ sender: UIButton) {
        
        let computing = Compute()
        
         if hasOperatorBeenPressed == false {
            previousValue = Double(displayLabel.text!)!
            hasOperatorBeenPressed = true
            displayLabel.text = ""
            previousOperation = sender.currentTitle!
        } else if hasOperatorBeenPressed == true && previousOperation == "=" {
            previousValue = Double(answerDisplay.text!)!
            hasOperatorBeenPressed = true
            previousOperation = sender.currentTitle!
        } else if hasOperatorBeenPressed == true && displayLabel.text == "" {
            
        } else {
            let currentValue = Double(displayLabel.text!)!
            print(currentValue)
            
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
            displayLabel.text = ""
    }
}

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

