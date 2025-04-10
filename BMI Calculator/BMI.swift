//
//  BMI.swift
//  BMI Calculator
//
//  Created by João Victor Fernandes on 01/04/25.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import Foundation

struct BMI {
    var height: Double?
    var weight: Double?
    
    init(height: Double?, weight: Double?) {
        self.height = height
        self.weight = weight
    }
    
    func calculateBMI() -> Double? {
        guard let height = height, let weight = weight, height > 0 else {
            return nil
        }
        return weight / pow(height, 2)
    }
}
