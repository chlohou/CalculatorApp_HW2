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
    
    
    @IBOutlet weak var displayLabel: UILabel!
    
    
    @IBAction func buttonPress(_ sender: UIButton) {
        if sender.currentTitle == "C" {
            displayLabel.text = ""
        } else {
        displayLabel.text = displayLabel.text! + sender.currentTitle!
        }
    }
    
    
    @IBAction func pressOperation(_ sender: UIButton) {
        if hasOperatorBeenPressed == false {
            var previousValue = Double(displayLabel.text!)
            hasOperatorBeenPressed = true
            displayLabel.text = ""
        }
        else {
            switch operators {
                case "+":
                //
                case "-":
                //
                case "/":
                //
                case "*":
                //
            }
     // compute

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

