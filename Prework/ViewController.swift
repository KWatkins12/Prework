//
//  ViewController.swift
//  Prework
//
//  Created by Kennon Watkins on 1/15/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billamounttextfield: UITextField!
    @IBOutlet weak var tipamountlabel: UILabel!
    @IBOutlet weak var TipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func CalculateTip(_ sender: Any) {
        // Get bill amount from texrt field inut
        let bill = Double(billamounttextfield.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill *
            tipPercentages[TipControl.selectedSegmentIndex]
        let total = bill + tip
        
        
        tipamountlabel.text = String(format: "$%.2f", tip)
        
            totalLabel.text = String(format: "$%.2f", total)
    }
    
}

