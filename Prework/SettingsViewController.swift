//
//  SettingsViewController.swift
//  Prework
//
//  Created by ErinnG on 1/25/21.
//

import UIKit

class SettingsViewController: UIViewController {
   
    @IBOutlet weak var CustomTipField1: UITextField!
    
    @IBOutlet weak var CustomTipField2: UITextField!
    
    @IBOutlet weak var CustomTipField3: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
//
    @IBAction func convertTextField(_ sender:Any){
        let customTip1 = Int(CustomTipField1.text!) ?? 0
        let customTip2 = Int(CustomTipField2.text!) ?? 0
        let customTip3 = Int(CustomTipField3.text!) ?? 0
        
        let customPercentages = [customTip1, customTip2, customTip3]
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
     
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        
//        let tips = convertTextField(<#Any#>)
//        
//        if segue.identifier == "showDetail" {
//            let controller = segue.destination as! ViewController
//            
//            switch controller.tipControl.selectedSegmentIndex {
//            case 0:
//                controller.tipControl.selectedSegmentIndex = tips[0]
//            case 1:
//                controller.tipControl.selectedSegmentIndex = tips[1]
//            case 2:
//                controller.tipControl.selectedSegmentIndex = tips[2]
//            default:
//                break
//            }
//            
//        }
//    }
//    

}
