//
//  ViewController.swift
//  TipCalculator
//
//  Created by Vitali on 30/09/2016.
//  Copyright © 2016 ck3g. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Instance Properties & Outlets
    let tipPercentage = 0.20
    @IBOutlet weak var tipTotalLabel: UILabel!
    @IBOutlet weak var tipAmountTextField: UITextField!

    // Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        tipTotalLabel.text = "Hello"
        tipAmountTextField.text = "0.00"
    }

    // IBActions
    @IBAction func calculateTipPressed(_ sender: UIButton) {
        guard let billTotal = tipAmountTextField.text else {
            return
        }

        guard let safeBillTotal = Double(billTotal) else {
            return
        }

        let tipAmount = safeBillTotal * tipPercentage
        tipTotalLabel.text = "Tip: \(tipAmount)"
    }


}

