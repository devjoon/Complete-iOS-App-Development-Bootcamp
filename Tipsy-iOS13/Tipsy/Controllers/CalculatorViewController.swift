//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var rate = 0.1
    var splitNumber = 2
    var result = "0"
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        if sender.tag == 0 {
            zeroPctButton.isSelected = true
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
            rate = 0.0
        } else if sender.tag == 1 {
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = true
            twentyPctButton.isSelected = false
            rate = 0.1
        } else {
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = true
            rate = 0.2
        }
        
    }
    
    override func viewDidLoad() {
        billTextField.endEditing(true)
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumber = Int(sender.value)
        splitNumberLabel.text = String(splitNumber)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        guard let bill = Double(billTextField.text ?? "0") else {
            return
        }
        
        result = String(format: "%.2f",((bill + (bill * rate)) / Double(splitNumber)))
        self.performSegue(withIdentifier: "goToResult", sender: Any?.self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ResultsViewController
        destinationVC.people = splitNumber
        destinationVC.tip = Int(rate * 100)
        destinationVC.result = result
    }
    
    
}

