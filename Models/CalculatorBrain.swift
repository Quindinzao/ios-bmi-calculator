//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by João Victor Fernandes on 10/04/25.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?

    init(bmi: BMI? = nil) {
        self.bmi = bmi
    }

    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        if (bmiValue < 18.5) {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor(named: "BackgroundBlue")!)
        } else if (bmiValue < 24.9) {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor(named: "BackgroundGreen")!)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color:  UIColor(named: "BackgroundRed")!)
        }
    }

    func getBMIValue() -> String {
        let bmiStr = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiStr
    }
    
    func getAdvice() -> String {
        return bmi?.advice.uppercased() ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
}
