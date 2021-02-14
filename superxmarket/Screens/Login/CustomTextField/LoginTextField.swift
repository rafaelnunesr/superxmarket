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
        self.font = UIFontMetrics.default.scaledFont(for: UIFont.robotoBold(size: 18))
        self.autocorrectionType = .no
        self.adjustsFontForContentSizeCategory = true
        self.setup()
    }

    // MARK: Setup
    func setup() {
        
        self.addSubviews()
        self.backgroundColor = Colors.ligherTransparentWhite
        
        if icon != nil {
            self.setupIconImageView()
        }
        
        if self.textFieldPlaceholder != nil {
            self.setupPlaceholder()
        }
        
        self.textColor = self.color
    }
    
    // MARK: AddSubviews
    func addSubviews() {
        self.addSubview(self.iconImageView)
    }
    
    // MARK: SetupIconImageView
    private func setupIconImageView() {
        self.setIconImageViewConstraints()
    
        iconImageView.image = UIImage(named: self.icon!.rawValue)
        
        self.addSubview(iconImageView)
        iconImageView.contentMode = .scaleAspectFill
    }
    
    // MARK: SetIconImageViewConstraints
    func setIconImageViewConstraints() {
        self.iconImageView.translatesAutoresizingMaskIntoConstraints = false
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(self.iconImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor))
        constraints.append(self.iconImageView.widthAnchor.constraint(equalToConstant: iconSize))
        constraints.append(self.iconImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    // MARK: SetupPlaceholder
    private func setupPlaceholder() {
        self.setPlaceholderWithColor(placeholder: textFieldPlaceholder!, color: self.color)
    }
}
