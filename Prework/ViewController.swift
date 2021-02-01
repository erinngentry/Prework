//
//  ViewController.swift
//  Prework
//
//  Created by ErinnG on 1/23/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var customTipLabel: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    
    var customTip = Double()
    let defaults = UserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Tip Calculator"
        
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(!animated)
        billAmountTextField.delegate = self
        
        if let value = defaults.value(forKey: "billAmount") as? String{
            totalLabel.text = value
        } else {
            print("nothing saved")
        }
        
    }
    
    func textFieldShouldReturn(textfield: UITextField) -> Bool{
        
        defaults.setValue(textfield.text, forKey: "billAmount")
        billAmountTextField.resignFirstResponder()
        
        return true
    }

    
    @IBAction func calculateTip(_ sender: Any) {
        
        
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentage = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
            
        
    }
    
    @IBAction func customTipSlider(_ sender: UISlider) {
        let value = Int(sender.value)
        customTipLabel.text = "\(value)%"
        
        customTip = Double(sender.value)
        
    }
    
    func updateTip(_ sender: Any) -> (Double, Double) {
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tip = round(bill) * (round(Double(customTip)) / 100)
        print(tip)
        
        return (tip, bill)
    }

    @IBAction func applyCustomTip(_ sender: UIButton) {
        let tip = updateTip((Any).self).0
        let total = updateTip((Any).self).1 + tip
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    
}

