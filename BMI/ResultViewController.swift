//
//  ResultViewController.swift
//  BMI
//
//  Created by Davlatshoh Baxtiyorov on 09/11/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiVal: String?
    var colorText: UIColor?
    var adviceText: String?
    
    
    @IBOutlet weak var bmiValue: UILabel!
    
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiValue.text = bmiVal
        adviceLabel.text = adviceText
        bmiValue.textColor = colorText
        

    }
    

    @IBAction func recalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
