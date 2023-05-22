//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by NazarStf on 10.05.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
	
	var bmi: BMI?
	
	mutating func calculateBMI(height: Float, weight: Float) {
		let bmiValue = weight / (height * height)
		
		if bmiValue < 18.5 {
			bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor(red: 22/255, green: 160/255, blue: 133/255, alpha: 1.0))
		} else if bmiValue < 24.9 {
			bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor(red: 41/255, green: 128/255, blue: 185/255, alpha: 1.0))
		} else {
			bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: UIColor(red: 192/255, green: 57/255, blue: 43/255, alpha: 1.0))
		}
	}

	
	func getBMIValue() -> String {
		let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
		return bmiTo1DecimalPlace
	}
	
	func getAdvice() -> String {
		return bmi?.advice ?? "No advice"
	}
	
	func getColor() -> UIColor {
		return bmi?.color ?? UIColor.white
	}
}
