////
////  SettingsViewController.swift
////  Prework
////
////  Created by ErinnG on 1/25/21.
////
//
//import UIKit
//
//class SettingsViewController: UIViewController {
//
//    @IBOutlet weak var customTip1: UITextField!
//    @IBOutlet weak var customTip2: UITextField!
//    @IBOutlet weak var customTip3: UITextField!
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//    }
//    
//    @IBAction func saveCustomTips(_ sender: Any) {    //    func saveCustomTips() {
//        let defaults = UserDefaults.standard
//        
////        let customTipsArray = [Float(customTip1.text!) ?? 0, Float(customTip2.text!) ?? 0, Float(customTip3.text!) ?? 0]
//        
////        let customTipsArray = [customTip1.text!, customTip2.text!, customTip3.text!]
//        
//        let tip1 = Double(customTip1.text!)
//        let tip2 = Double(customTip2.text!)
//        let tip3 = Double(customTip3.text!)
//        
//        defaults.set(tip1, forKey: "customTip1")
//        
//        defaults.set(tip2, forKey: "customTip2")
//        
//        defaults.set(tip3, forKey: "customTip3")
//
//        print("custom tip: ", tip1 ?? 15, tip2 ?? 18, tip3 ?? 20)
//        
//    }
//
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }
//    */
//    
//    
////    @IBAction func updateTipControl(_ sender: Any) {
////        let defaults = UserDefaults.standard
////
////        let tip1 = defaults.double(forKey: "customTip1")
////        let tip2 = defaults.double(forKey: "customTip2")
////        let tip3 = defaults.double(forKey: "customTip3")
////
////
////        tipControl.setTitle(String(tip1), forSegmentAt: 0)
////        tipControl.setTitle(String(tip2), forSegmentAt: 1)
////        tipControl.setTitle(String(tip3), forSegmentAt: 2)
////    }
//    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any!) {
//        if(segue.identifier == "replaceTitles"){
//            let viewCont = segue.destination as! ViewController
//            
////            viewCont.tipControl.setTitle((customTip1.text) ?? "15", forSegmentAt: 0)
////            viewCont.tipControl.setTitle((customTip2.text) ?? "18", forSegmentAt: 1)
////            viewCont.tipControl.setTitle((customTip3.text) ?? "20", forSegmentAt: 2)
//            
//        }
//    }
//}
