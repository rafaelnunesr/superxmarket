//
//  CustomTextField.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 2/12/21.
//

import Foundation
import UIKit

enum Icons: String {
    case person = "person"
    case lock = "lock"
}

class CustomTextField: UITextField {
    
    // MARK: Variables
    let iconImageView: UIImageView = UIImageView()
    let iconSize: CGFloat = 25
    var icon: Icons?
    var textFieldPlaceholder: String?
    var color: UIColor = .white
    let height: CGFloat = 52
    let padding: CGFloat = 40
    let cornerRadius: CGFloat = 10
    
    // MARK: Setup
    func setup(icon: Icons, placeholder: String) {
        self.icon = icon
        self.textFieldPlaceholder = placeholder
        self.layer.cornerRadius = cornerRadius
        let paddingView = self.setPadding(amount: padding)
        self.leftView = paddingView
        self.leftViewMode = UITextField.ViewMode.always
    }
    
    func iconAtRight() {
        let paddingView = self.setPadding(amount: padding)
        self.rightView = paddingView
        self.rightViewMode = UITextField.ViewMode.always
    }
    
    // MARK: AddShadowEffect
    func addShadowEffect() {
        self.layer.shadowOffset = CGSize(width: 0, height: 3.0)
        self.layer.shadowOpacity = 0.3
        self.layer.shadowRadius = 4.0
        self.layer.shadowColor = UIColor.black.cgColor
    }
}
