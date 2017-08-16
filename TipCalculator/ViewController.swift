//
//  ViewController.swift
//  TipCalculator
//
//  Created by Nanxi Kang on 8/14/17.
//  Copyright © 2017 Nanxi Kang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipField: UITextField!
    @IBOutlet weak var customizeTipsEnabled: UISwitch!
    
    @IBOutlet weak var splitByTwoLabel: UILabel!
    @IBOutlet weak var splitByThreeLabel: UILabel!
    @IBOutlet weak var splitByFourLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func getTip() -> Double {
        let bill = Double(billField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.20]
        if (customizeTipsEnabled.isOn) {
            return Double(tipField.text!) ?? 0
        }
        else {
            return bill * tipPercentages[tipControl.selectedSegmentIndex]
        }

    }

    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billField.text!) ?? 0
        let tip = getTip()
        let total = bill + tip
    
        if (!customizeTipsEnabled.isOn) {
            tipField.text = String(format: "%.2f", tip)
        }
        totalLabel.text = String(format: "%.2f", total)
        splitByTwoLabel.text = String(format: "%.2f", total / 2)
        splitByThreeLabel.text = String(format: "%.2f", total / 3)
        splitByFourLabel.text = String(format: "%.2f", total / 4)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }

}

