//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Duca Mariangela on 05.05.2022.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import UIKit


//var color = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiValueFormatted = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiValueFormatted
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .orange
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more!", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Good job!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less!", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
        // bmi = BMI(value: bmiValue, advice: <#T##String#>, color: <#T##UIColor#>)
    }
    
    
    
    
}
