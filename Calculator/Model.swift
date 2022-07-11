//
//  Model.swift
//  Calculator
//
//  Created by Даниэл Лабецкий on 10.07.22.
//

import Foundation
import UIKit

extension ViewController {
    
    // Tap buttonZero
    @objc func zeroTap (){
        if resultLabel.text != "0" {
            if let text = resultLabel.text {
                resultLabel.text = "\(text)\(0)"
            }
        }
    }
    // Tap numbers 1...9
    @objc func numberPressed(_ sender: UIButton) {
        let tag = sender.tag - 1
        
        if resultLabel.text == "0" {
            resultLabel.text = "\(tag)"
        }
        else if let text = resultLabel.text {
            resultLabel.text = "\(text)\(tag)"
        }
    }
    // Tap buttonDelete(clear result)
    @objc func clearResult() {
        resultLabel.text = "0"
        currentOperations = nil
        firstNumber = 0
    }
    // Operators
    @objc func operationPressed(_ sender: UIButton) {
        let tag = sender.tag
        
        if let text = resultLabel.text, let value = Int(text), firstNumber == 0 {
            firstNumber = value
            resultLabel.text = "0"
        }
        
        if tag == 18 {
            if let operation = currentOperations {
                var secondNumber = 0
                if let text = resultLabel.text, let value = Int(text) {
                    secondNumber = value
                }
                
                switch operation {
                case .add:
                    firstNumber = firstNumber + secondNumber
                    secondNumber = 0
                    resultLabel.text = "\(firstNumber)"
                    currentOperations = nil
                    firstNumber = 0
                    break
                    
                case .subtract:
                    firstNumber = firstNumber - secondNumber
                    secondNumber = 0
                    resultLabel.text = "\(firstNumber)"
                    currentOperations = nil
                    firstNumber = 0
                    break
                    
                case .multiply:
                    firstNumber = firstNumber * secondNumber
                    secondNumber = 0
                    resultLabel.text = "\(firstNumber)"
                    currentOperations = nil
                    firstNumber = 0
                    break
                    
                case .divide:
                    firstNumber = firstNumber / secondNumber
                    secondNumber = 0
                    resultLabel.text = "\(firstNumber)"
                    currentOperations = nil
                    firstNumber = 0
                    break
                }
            }
        }
        else if tag == 11 {
            currentOperations = .add
        }
        else if tag == 12 {
            currentOperations = .subtract
        }
        else if tag == 13 {
            currentOperations = .multiply
        }
        else if tag == 17 {
            currentOperations = .divide
        }
    }
    
}
