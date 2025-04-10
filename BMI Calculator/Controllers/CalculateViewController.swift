//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    var bmiStr: String = "0.0"
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightBar: UISlider!
    @IBOutlet weak var weightBar: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f", sender.value) + "m"
        
    }

    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = String(format: "%.0f", sender.value) + "Kg"
    }

    @IBAction func bmiCalculation(_ sender: UIButton) {
        let weight = weightBar.value
        let doubleHeight = pow(heightBar.value, 2)
        
        let bmi = weight / doubleHeight
        bmiStr = String(format: "%.1f", bmi)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(bmiStr)
        if (segue.identifier == "goToResult") {
            let destinationVC = segue.destination as! ResultViewController
            
            destinationVC.bmiValue = bmiStr
        }
    }
}
