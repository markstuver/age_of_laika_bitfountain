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

    
    
    //MARK: - IBAction Button Methods


   @IBAction func convertToDogYearsButtonPressed(sender: UIButton) {
        
        // Grab amount entered in textField and convert to an Int
         let humanYearsEnteredIntoTextField:Int = enterHumanYearsTextField.text.toInt()!
        
        // Turn convertedAgeLabel's hidden property off
        convertedAgeLabel.hidden = false

        // Set covertedAge Label.text to a string interpolation with the calculated values
        convertedAgeLabel.text = "\(humanYearsEnteredIntoTextField)" + " Human Years equals \n" + "\(humanYearsEnteredIntoTextField * 7)" + " Dog Years"
        
        // Resign the Keypad from the view
        enterHumanYearsTextField.resignFirstResponder()
    }
    
    @IBAction func convertToActualDogYearsButtonPressed(sender: UIButton) {
        
        // Grab amount entered in textField and convert to a Int
        let humanYearsEnteredIntoTextField:Int = enterHumanYearsTextField.text.toInt()!
        
        // Convert Int to a Double
        let convertIntToDouble = Double(humanYearsEnteredIntoTextField)

        // Un-Hide Label
        convertedAgeLabel.hidden = false
        
        // If ..TextField is equal to 1...
            if humanYearsEnteredIntoTextField == 1 {
                
                // ..Make label read..
                convertedAgeLabel.text = "\(humanYearsEnteredIntoTextField)" + " Human Years accurately equals \n" + " 10.5 Dog Years"
            }
                
            // Else If ..TextField is equal to 2...
            else if humanYearsEnteredIntoTextField == 2 {
                
                // ..Make label read..
                convertedAgeLabel.text = "\(humanYearsEnteredIntoTextField)" + " Human Years accurately equals \n" + "\(Int(convertIntToDouble * 10.5))" + " Dog Years"
            }
                
            // Else ..
            else {
                
                // Set Constant to the Int sum of the amount of years for the first two plus the remaining years multipled by 4
                let totalYearsInDogYears = Int((Double(2 * 10.5)) + (Double((convertIntToDouble - 2) * 4.0)))
                
                // Make label read..
                convertedAgeLabel.text = "\(humanYearsEnteredIntoTextField)" + " Human years accurately equals \n" + "\(totalYearsInDogYears)" + " Dog Years"
            }
        
        
        // Resign the Keyboard for the view
         enterHumanYearsTextField.resignFirstResponder()
    }
    

    
    
    
    
}

