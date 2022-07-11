//
//  ViewController.swift
//  Calculator
//
//  Created by Даниэл Лабецкий on 10.07.22.
//

import UIKit

class ViewController: UIViewController {
        
    var firstNumber = 0
    var resultNumber = 0
    
    enum Operation {
        case add, subtract, multiply, divide
    }
    
    var currentOperations: Operation?
    
    // buttons
    let buttonZero = UIButton()
    let buttonDecimal = UIButton()
    let buttonEqually = UIButton()
    let buttonOne = UIButton()
    let buttonTwo = UIButton()
    let buttonThree = UIButton()
    let buttonPlus = UIButton()
    let buttonFour = UIButton()
    let buttonFive = UIButton()
    let buttonSix = UIButton()
    let buttonMinus = UIButton()
    let buttonSeven = UIButton()
    let buttonEight = UIButton()
    let buttonNine = UIButton()
    let buttonMultiply = UIButton()
    let buttonDelete = UIButton()
    let buttonPlusMin = UIButton()
    let buttonPercent = UIButton()
    let buttonDivide = UIButton()
    var resultLabel = UILabel()
    
    //MARK: ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        buttonZero.exButton(title: "0", color: #colorLiteral(red: 0.1951841414, green: 0.2001631856, blue: 0.2000760734, alpha: 1), 1)
        view.addSubview(buttonZero)
        buttonZero.addTarget(self, action: #selector(zeroTap), for: .touchUpInside)
        
        buttonOne.exButton(title: "1", color: #colorLiteral(red: 0.1951841414, green: 0.2001631856, blue: 0.2000760734, alpha: 1), 2)
        view.addSubview(buttonOne)
        buttonOne.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
        
        buttonTwo.exButton(title: "2", color: #colorLiteral(red: 0.1951841414, green: 0.2001631856, blue: 0.2000760734, alpha: 1), 3)
        view.addSubview(buttonTwo)
        buttonTwo.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
        
        buttonThree.exButton(title: "3", color: #colorLiteral(red: 0.1951841414, green: 0.2001631856, blue: 0.2000760734, alpha: 1), 4)
        view.addSubview(buttonThree)
        buttonThree.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
        
        buttonFour.exButton(title: "4", color: #colorLiteral(red: 0.1951841414, green: 0.2001631856, blue: 0.2000760734, alpha: 1), 5)
        view.addSubview(buttonFour)
        buttonFour.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
        
        buttonFive.exButton(title: "5", color: #colorLiteral(red: 0.1951841414, green: 0.2001631856, blue: 0.2000760734, alpha: 1), 6)
        view.addSubview(buttonFive)
        buttonFive.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
        
        buttonSix.exButton(title: "6", color: #colorLiteral(red: 0.1951841414, green: 0.2001631856, blue: 0.2000760734, alpha: 1), 7)
        view.addSubview(buttonSix)
        buttonSix.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
        
        buttonSeven.exButton(title: "7", color: #colorLiteral(red: 0.1951841414, green: 0.2001631856, blue: 0.2000760734, alpha: 1), 8)
        view.addSubview(buttonSeven)
        buttonSeven.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
        
        buttonEight.exButton(title: "8", color: #colorLiteral(red: 0.1951841414, green: 0.2001631856, blue: 0.2000760734, alpha: 1), 9)
        view.addSubview(buttonEight)
        buttonEight.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
        
        buttonNine.exButton(title: "9", color: #colorLiteral(red: 0.1951841414, green: 0.2001631856, blue: 0.2000760734, alpha: 1), 10)
        view.addSubview(buttonNine)
        buttonNine.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
        
        buttonPlus.exButton(title: "+", color: .orange, 11)
        view.addSubview(buttonPlus)
        buttonPlus.addTarget(self, action: #selector(operationPressed(_:)), for: .touchUpInside)
        
        buttonMinus.exButton(title: "-", color: .orange, 12)
        view.addSubview(buttonMinus)
        buttonMinus.addTarget(self, action: #selector(operationPressed(_:)), for: .touchUpInside)
        
        buttonMultiply.exButton(title: "×", color: .orange, 13)
        view.addSubview(buttonMultiply)
        buttonMultiply.addTarget(self, action: #selector(operationPressed(_:)), for: .touchUpInside)
        
        buttonDelete.exButton(title: "AC", color: #colorLiteral(red: 0.6509803922, green: 0.6509803922, blue: 0.6588235294, alpha: 1), 14)
        view.addSubview(buttonDelete)
        buttonDelete.addTarget(self, action: #selector(clearResult), for: .touchUpInside)
        
        buttonPlusMin.exButton(title: "+/-", color: #colorLiteral(red: 0.6509803922, green: 0.6509803922, blue: 0.6588235294, alpha: 1), 15)
        view.addSubview(buttonPlusMin)
        
        buttonPercent.exButton(title: "%", color: #colorLiteral(red: 0.6509803922, green: 0.6509803922, blue: 0.6588235294, alpha: 1), 16)
        view.addSubview(buttonPercent)
        
        buttonDivide.exButton(title: "÷", color: .orange, 17)
        view.addSubview(buttonDivide)
        buttonDivide.addTarget(self, action: #selector(operationPressed(_:)), for: .touchUpInside)
        
        buttonEqually.exButton(title: "=", color: .orange, 18)
        view.addSubview(buttonEqually)
        buttonEqually.addTarget(self, action: #selector(operationPressed(_:)), for: .touchUpInside)

        buttonDecimal.exButton(title: ",", color: #colorLiteral(red: 0.1951841414, green: 0.2001631856, blue: 0.2000760734, alpha: 1), 19)
        view.addSubview(buttonDecimal)
        
        resultLabel.translatesAutoresizingMaskIntoConstraints = false
        resultLabel.backgroundColor = .black
        view.addSubview(resultLabel)
        resultLabel.text = "0"
        resultLabel.textColor = .white
        resultLabel.textAlignment = .right
        resultLabel.font = UIFont(name: "Helvetica", size: 50)
        constraintsButton()
    }
}

