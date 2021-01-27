//
//  ViewController.swift
//  Prework
//
//  Created by ErinnG on 1/23/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Tip Calculator"
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
      
        
        
    }
   
    @IBAction func updateTitles(_ sender: Any) {
        
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let defaults = UserDefaults.standard
              
        let tips = defaults.string(forKey: "customTips")
        
        let bill = Double(billAmountTextField.text!) ?? 0
        if(tips == nil){
        let tipPercentage = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        } else{
//            let tips = tips.map { (value) -> Double in return Double(value)!}
//            print(tips!)
            
        }
    }
    
}

