//
//  LoginTextField.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 1/26/21.
//

import Foundation
import UIKit

class LoginTextField: CustomTextField {
    
    // MARK: Setup
    override func setup(icon: Icons, placeholder: String) {
        super.setup(icon: icon, placeholder: placeholder)
        self.backgroundColor = Colors.ligherTransparentWhite
        iconImageView.tintColor = .white
    }

    
}
