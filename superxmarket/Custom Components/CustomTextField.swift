//
//  CustomTextField.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 2/12/21.
//

import Foundation
import UIKit

class CustomTextField: UITextField {
    
    // MARK: Variables
    let height: CGFloat = 52
    let padding: CGFloat = 40
    let cornerRadius: CGFloat = 10
    
    // MARK: Setup
    func setup() {
        self.layer.cornerRadius = cornerRadius
        let paddingView = self.setPadding(amount: padding)
        self.leftView = paddingView
        self.leftViewMode = UITextField.ViewMode.always
    }
    
    // MARK: AddShadowEffect
    func addShadowEffect() {
        self.layer.shadowOffset = CGSize(width: 0, height: 3.0)
        self.layer.shadowOpacity = 0.3
        self.layer.shadowRadius = 4.0
        self.layer.shadowColor = UIColor.black.cgColor
    }
}
