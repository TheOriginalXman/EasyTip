//
//  ViewController.swift
//  EasyTip
//
//  Created by Prajan Chauhan on 3/2/17.
//  Copyright © 2017 Prajan Chauhan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: AnyObject) {
        let billAmount = Double(billTextField.text!) ?? 0
        let tipSelectArray = [0.18, 0.2, 0.25]
        let tipAmount = billAmount * tipSelectArray[tipControl.selectedSegmentIndex]
        let totalAmount = billAmount + tipAmount

        tipLabel.text = String(format: "$%.2f",tipAmount)
        totalLabel.text = String(format: "$%.2f", totalAmount)
    }

}

