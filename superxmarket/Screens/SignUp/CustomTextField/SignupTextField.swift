//
//  SignupTextField.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 2/15/21.
//

import Foundation
import UIKit

class SignupTextField: CustomTextField {
    
    override func setup(icon: Icons, placeholder: String) {
        super.setup(icon: icon, placeholder: placeholder)
        self.backgroundColor = .white
        self.setPlaceholderWithColor(placeholder: textFieldPlaceholder!, color: Colors.mainPurple)
        self.textColor = Colors.mainPurple
        self.addShadowEffect()
    }
}
