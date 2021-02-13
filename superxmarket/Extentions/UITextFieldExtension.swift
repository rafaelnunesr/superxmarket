//
//  UITextFieldExtension.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 1/26/21.
//

import UIKit

extension UITextField {
    
    // MARK: SetLeftPadding
    func setLeftPadding(amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    
    // MARK: SetRightPadding
    func setRightPadding(amount:CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.rightView = paddingView
        self.rightViewMode = .always
    }
    
    
//    func setRightPaddingWithIcon(amount: CGFloat, iconSize: CGFloat ,iconSystemName: String, iconColor: UIColor) {
//
//        let padding = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: amount)
//        self.bounds.inset(by: padding)
//
//        let icon = UIImageView(frame: CGRect(x: 0, y: 0, width: iconSize, height: iconSize))
//        icon.image = UIImage(named: iconSystemName)
//        paddingView.addSubview(icon)
//
//    }
    
    // MARK: SetRightPaddingWithIcon
    func setRightPaddingWithIcon(amount: CGFloat = 10, iconSize: CGFloat = 20 ,iconSystemName: String, iconColor: UIColor = Colors.mainPurple) {
        
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        
        let icon = UIImageView(frame: CGRect(x: 0, y: 0, width: iconSize, height: iconSize))
        icon.image = UIImage(named: iconSystemName)
        self.addSubview(paddingView)
        self.addSubview(icon)
    
        paddingView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        paddingView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        
        icon.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        icon.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -amount).isActive = true
        
        icon.contentMode = .scaleAspectFill
        icon.tintColor = iconColor
        
        self.rightView = paddingView
        self.rightViewMode = .always
        
    }
    
    // MARK: SetLeftPaddingWithIcon
    func setLeftPaddingWithIcon(amount: CGFloat = 10, iconSize: CGFloat = 20 ,iconSystemName: String, iconColor: UIColor = Colors.mainPurple) {
        
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        
        let icon = UIImageView(frame: CGRect(x: 0, y: 0, width: iconSize, height: iconSize))
        icon.image = UIImage(named: iconSystemName)
        
        self.addSubview(paddingView)
        self.addSubview(icon)
    
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(paddingView.centerYAnchor.constraint(equalTo: self.centerYAnchor))
        constraints.append(paddingView.leadingAnchor.constraint(equalTo: self.leadingAnchor))
        constraints.append(icon.centerYAnchor.constraint(equalTo: self.centerYAnchor))
        constraints.append(icon.leadingAnchor.constraint(equalTo: paddingView.trailingAnchor))
        
        NSLayoutConstraint.activate(constraints)
        
        
        
        
//        paddingView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
//        paddingView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        
        paddingView.backgroundColor = .yellow
        
        //icon.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        //icon.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: amount).isActive = true
        
        icon.contentMode = .scaleAspectFill
        icon.tintColor = iconColor
        
        //self.leftView = paddingView
        //self.leftViewMode = .always
        
    }
    
    
    // MARK: SetPlaceholderWithColor
    func setPlaceholderWithColor(placeholder: String, color: UIColor) {
        
        self.attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [
            .foregroundColor: color,
            .font: UIFont.robotoBold(size: 18)
        ])
    }
    
    // MARK: IsEmpty
    func isEmpty() -> Bool {
        if self.text == "" {
            return true
        }
        return false
    }
    
}
