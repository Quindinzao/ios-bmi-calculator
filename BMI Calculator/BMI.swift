//
//  BMI.swift
//  BMI Calculator
//
//  Created by João Victor Fernandes on 11/04/25.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import UIKit

struct BMI {
    let value: Float
    let advice: String
    let color: UIColor
    
    init(value: Float, advice: String, color: UIColor) {
        self.value = value
        self.advice = advice
        self.color = color
    }
}
