//
//  ConstraintsButton.swift
//  Calculator
//
//  Created by Даниэл Лабецкий on 10.07.22.
//

import Foundation
import UIKit
 
extension ViewController {
    func constraintsButton() {
        let constraintsOne = [
            // 0
            buttonZero.topAnchor.constraint(equalTo: view.topAnchor,constant: 700),
            buttonZero.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            buttonZero.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -210),
            buttonZero.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            // 0,
            buttonDecimal.topAnchor.constraint(equalTo: view.topAnchor,constant: 700),
            buttonDecimal.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 210),
            buttonDecimal.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -110),
            buttonDecimal.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            // =
            buttonEqually.topAnchor.constraint(equalTo: view.topAnchor,constant: 700),
            buttonEqually.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 310),
            buttonEqually.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            buttonEqually.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            // 1
            buttonOne.topAnchor.constraint(equalTo: view.topAnchor,constant: 600),
            buttonOne.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            buttonOne.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -310),
            buttonOne.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200),
            // 2
            buttonTwo.topAnchor.constraint(equalTo: view.topAnchor,constant: 600),
            buttonTwo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 110),
            buttonTwo.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -210),
            buttonTwo.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200),
            // 3
            buttonThree.topAnchor.constraint(equalTo: view.topAnchor,constant: 600),
            buttonThree.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 210),
            buttonThree.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -110),
            buttonThree.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200),
            // +
            buttonPlus.topAnchor.constraint(equalTo: view.topAnchor,constant: 600),
            buttonPlus.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 310),
            buttonPlus.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            buttonPlus.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200),
            // 4
            buttonFour.topAnchor.constraint(equalTo: view.topAnchor,constant: 500),
            buttonFour.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            buttonFour.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -310),
            buttonFour.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -300),
            // 5
            buttonFive.topAnchor.constraint(equalTo: view.topAnchor,constant: 500),
            buttonFive.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 110),
            buttonFive.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -210),
            buttonFive.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -300),
            // 6
            buttonSix.topAnchor.constraint(equalTo: view.topAnchor,constant: 500),
            buttonSix.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 210),
            buttonSix.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -110),
            buttonSix.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -300),
            // -
            buttonMinus.topAnchor.constraint(equalTo: view.topAnchor,constant: 500),
            buttonMinus.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 310),
            buttonMinus.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            buttonMinus.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -300),
            // 7
            buttonSeven.topAnchor.constraint(equalTo: view.topAnchor,constant: 400),
            buttonSeven.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            buttonSeven.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -310),
            buttonSeven.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -400),
            // 8
            buttonEight.topAnchor.constraint(equalTo: view.topAnchor,constant: 400),
            buttonEight.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 110),
            buttonEight.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -210),
            buttonEight.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -400),
            // 9
            buttonNine.topAnchor.constraint(equalTo: view.topAnchor,constant: 400),
            buttonNine.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 210),
            buttonNine.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -110),
            buttonNine.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -400),
            // X
            buttonMultiply.topAnchor.constraint(equalTo: view.topAnchor,constant: 400),
            buttonMultiply.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 310),
            buttonMultiply.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            buttonMultiply.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -400),
            // deldete
            buttonDelete.topAnchor.constraint(equalTo: view.topAnchor,constant: 300),
            buttonDelete.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            buttonDelete.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -310),
            buttonDelete.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -500),
            // +/-
            buttonPlusMin.topAnchor.constraint(equalTo: view.topAnchor,constant: 300),
            buttonPlusMin.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 110),
            buttonPlusMin.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -210),
            buttonPlusMin.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -500),
            // %
            buttonPercent.topAnchor.constraint(equalTo: view.topAnchor,constant: 300),
            buttonPercent.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 210),
            buttonPercent.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -110),
            buttonPercent.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -500),
            // /
            buttonDivide.topAnchor.constraint(equalTo: view.topAnchor,constant: 300),
            buttonDivide.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 310),
            buttonDivide.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            buttonDivide.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -500),
            // label
            resultLabel.topAnchor.constraint(equalTo: view.topAnchor,constant: 50),
            resultLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            resultLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            resultLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -600),
        ]
        NSLayoutConstraint.activate(constraintsOne)
    }
}
