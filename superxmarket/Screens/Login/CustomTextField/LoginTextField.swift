//
//  LoginTextField.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 1/26/21.
//

import Foundation
import UIKit

enum Icons: String {
    case person = "person"
    case lock = "lock"
}

class LoginTextField: CustomTextField {
    
    // MARK: Variables
    let iconImageView: UIImageView = UIImageView()
    let iconSize: CGFloat = 25
    var leftIcon: Icons?
    var textFieldPlaceholder: String?
    var color: UIColor = .white
    
    // MARK: Setup
    func setup(leftIcon: Icons, placeholder: String) {
        self.leftIcon = leftIcon
        self.textFieldPlaceholder = placeholder
        self.font = UIFontMetrics.default.scaledFont(for: UIFont.robotoBold(size: 18))
        self.autocorrectionType = .no
        self.adjustsFontForContentSizeCategory = true
        self.setup()
    }

    // MARK: Setup
    override internal func setup() {
        super.setup()
        
        self.addSubviews()
        self.backgroundColor = UIColor(white: 1, alpha: 0.15)
        
        if leftIcon != nil {
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
    
        iconImageView.image = UIImage(named: self.leftIcon!.rawValue)
        
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
