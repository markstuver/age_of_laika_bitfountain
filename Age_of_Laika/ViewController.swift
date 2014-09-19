//
//  ViewController.swift
//  Age_of_Laika
//
//  Created by Mark Stuver on 9/18/14.
//  Copyright (c) 2014 Mark Stuver. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterHumanYearsTextField: UITextField!
    @IBOutlet weak var convertedAgeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func convertToDogYearsButtonPressed(sender: UIButton) {
        
        // Grab amount entered in textField and convert to an Int
         let humanYearsEnteredIntoTextField:Int = enterHumanYearsTextField.text.toInt()!
        
        convertedAgeLabel.hidden = false
        
        convertedAgeLabel.text = "\(humanYearsEnteredIntoTextField * 7)" + " Human Years"
        
        enterHumanYearsTextField.resignFirstResponder()
    }
    
    
    
}

