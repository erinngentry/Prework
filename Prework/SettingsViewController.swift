//
//  SettingsViewController.swift
//  Prework
//
//  Created by ErinnG on 1/25/21.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var customTip1: UITextField!
    @IBOutlet weak var customTip2: UITextField!
    @IBOutlet weak var customTip3: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveCustomTips(_ sender: Any) {    //    func saveCustomTips() {
        let defaults = UserDefaults.standard
        
//        let customTipsArray = [Float(customTip1.text!) ?? 0, Float(customTip2.text!) ?? 0, Float(customTip3.text!) ?? 0]
        
        let customTipsArray = [customTip1.text!, customTip2.text!, customTip3.text!]
        
        defaults.set(customTipsArray, forKey: "customTips")

        print("custom tip: ", customTipsArray)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
