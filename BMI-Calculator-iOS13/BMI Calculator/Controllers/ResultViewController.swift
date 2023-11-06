//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by hyunMac on 11/5/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue: String?
    var bmiadvice: String?
    var bmicolor: UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        adviceLabel.text = bmiadvice
        bmiLabel.text = bmiValue
        view.backgroundColor = bmicolor
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
