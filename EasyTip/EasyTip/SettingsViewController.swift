//
//  SettingsViewController.swift
//  EasyTip
//
//  Created by Prajan Chauhan on 3/2/17.
//  Copyright © 2017 Prajan Chauhan. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var segDefaultTip: UISegmentedControl!
    let userDefaults = UserDefaults.standard
    
    @IBAction func actDefaultTipSelect(_ sender: Any) {
      let tipNo = segDefaultTip.selectedSegmentIndex
        userDefaults.set(tipNo, forKey: "tipIndex")
        userDefaults.synchronize()
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var tipNo: Int? = userDefaults.object(forKey: "tipIndex") as! Int?
        if(tipNo == nil){
            tipNo = 1;
            userDefaults.set(tipNo, forKey: "tipIndex");
        }
        
        switch (tipNo!) {
        case 0:
            print(0)
        case 1:
            print(1)
        case 2:
            print(2)
            
        default:
            print(0)
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
