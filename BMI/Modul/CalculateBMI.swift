//
//  CalculateBMI.swift
//  BMI
//
//  Created by Davlatshoh Baxtiyorov on 09/11/23.
//

import UIKit

struct CalculateBMI {
    var bmi: BMI?
    
    
    
    mutating func calculateBMI(vazn: Float, buy: Float){
        let bmiVal = vazn / pow(buy, 2)
        
        if bmiVal < 18.4{
            bmi = BMI(value: bmiVal, adviceText: "Ko'proq ovqatlaning", color: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1) )
        }
        else if bmiVal <= 24.9{
            bmi = BMI(value: bmiVal, adviceText: "Siz ayni me'yoridasiz", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1) )
        }
        
        else{
            bmi = BMI(value: bmiVal, adviceText: "Iltimos kamroq ovqatlaning", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1) )
        }
        
    }
    
    func getBMIValue() -> String {
        let bmiString = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiString
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.gray
    }
    
    func getAdvice() -> String {
        return bmi?.adviceText ?? "Maslahat yo'q"
    }
}
