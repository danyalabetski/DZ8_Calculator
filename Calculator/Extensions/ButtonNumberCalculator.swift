//
//  ButtonNumberCalculator.swift
//  Calculator
//
//  Created by Даниэл Лабецкий on 10.07.22.
//

import Foundation
import UIKit

extension UIButton {
    func exButton(title: String, color: UIColor, _ tag: Int) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = color
        self.setTitle(title, for: .normal)
        self.titleLabel?.font = UIFont.systemFont(ofSize: 35, weight: .light)
        self.layer.cornerRadius = 47
        self.tag = tag
    }
}
