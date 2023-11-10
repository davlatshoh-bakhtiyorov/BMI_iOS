//
//  ViewController.swift
//  BMI
//
//  Created by Davlatshoh Baxtiyorov on 09/11/23.
//

import UIKit

class BMIViewController: UIViewController {
    
    var calculateBMI = CalculateBMI()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
//Bo'y qiymati
    @IBOutlet weak var BuyLabel: UILabel!
//Vazn qiymati
    @IBOutlet weak var VaznLabel: UILabel!
    
    
    @IBOutlet weak var BuyUISlider: UISlider!
    @IBOutlet weak var VaznUISlider: UISlider!
    
    
    
    
 //Vazn slideri
   
    @IBAction func sliderValueVazn(_ sender: UISlider) {
        let value = Int(sender.value)
        VaznLabel.text="\(String(value))kg"
    }
    
    
//Bo'y slayderi
    @IBAction func sliderValueBuy(_ sender: UISlider) {
        let value = round(sender.value * 10) / 10.0
        BuyLabel.text = "\(String(value))m"
    }
    
    
    
//Hisoblash tugmasi
    @IBAction func buttonHisoblash(_ sender: UIButton) {
        let vazn = VaznUISlider.value
        let buy = BuyUISlider.value
        
        
        calculateBMI.calculateBMI(vazn: vazn, buy: buy)
        
        self.performSegue(withIdentifier: "showResults", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "showResults"{
            let resultVC = segue.destination as! ResultViewController
            resultVC.bmiVal = calculateBMI.getBMIValue()
            resultVC.adviceText = calculateBMI.getAdvice()
            resultVC.colorText = calculateBMI.getColor()
        
        }
    }
    
}

