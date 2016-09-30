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
    var tipPercentage = 0.10
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
        calculateTip()
    }

    @IBAction func tipPercentageValueDidChange(_ sender: UISegmentedControl) {
        let selectedIndex = sender.selectedSegmentIndex

        switch selectedIndex {
        case 0:
            tipPercentage = 0.05
        case 1:
            tipPercentage = 0.1
        case 2:
            tipPercentage = 0.15
        default:
            tipPercentage = 0.2
        }

        calculateTip()
    }

    // Helper Methods

    func calculateTip() {
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

