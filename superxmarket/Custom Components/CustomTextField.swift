//
//  CustomTextField.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 2/12/21.
//

import Foundation
import UIKit

enum Icons: String {
    case person = "person.fill"
    case lock = "lock.fill"
    case envelope = "envelope.fill"
    case phone = "phone.fill"
    case calendar = "calendar"
    case house = "house.fill"
    case camera = "camera.fill"
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
        self.font = UIFontMetrics.default.scaledFont(for: UIFont.robotoBold(size: 18))
        self.autocorrectionType = .no
        self.adjustsFontForContentSizeCategory = true
        
        self.icon = icon
        self.textFieldPlaceholder = placeholder
        self.layer.cornerRadius = cornerRadius
        let paddingView = self.setPadding(amount: padding)
        self.leftView = paddingView
        self.leftViewMode = UITextField.ViewMode.always
        self.setup()
    }
    
    func iconAtRight() {
        let paddingView = self.setPadding(amount: padding)
        self.rightView = paddingView
        self.rightViewMode = UITextField.ViewMode.always
    }
    
    // MARK: Setup
    func setup() {
        
        self.addSubviews()
        
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
    
        iconImageView.image = UIImage(systemName: self.icon!.rawValue)
        iconImageView.tintColor = Colors.mainPurple
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
