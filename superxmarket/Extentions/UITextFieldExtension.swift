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
    
    // MARK: SetRightPaddingWithIcon
    func setRightPaddingWithIcon(amount: CGFloat, iconSize: CGFloat ,iconSystemName: String, iconColor: UIColor) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        
        print("PaddingView width: \(paddingView.bounds.size.width)")
        print("PaddingView height: \(paddingView.bounds.size.height)")
        
        
        let icon = UIImageView(frame: CGRect(x: 0, y: 0, width: iconSize, height: iconSize))
        icon.image = UIImage(systemName: iconSystemName)
        paddingView.addSubview(icon)
        
        print("icon width: \(icon.bounds.size.width)")
        print("icon height: \(icon.bounds.size.height)")
        
        let frameSize = self.frame.size.height
        
        icon.centerYAnchor.constraint(equalTo: paddingView.centerYAnchor).isActive = true
        icon.leadingAnchor.constraint(equalTo: paddingView.leadingAnchor, constant: amount)
        
        icon.contentMode = .scaleAspectFit
        icon.tintColor = iconColor
        
        self.rightView = paddingView
        self.rightViewMode = .always
        
    }
    
    // MARK: SetLeftPaddingWithIcon
    func setLeftPaddingWithIcon(padding: CGFloat, iconSystemName: String) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: padding, height: self.frame.size.height))
        
        let icon = UIImageView(frame: CGRect(x: 0, y: 0, width: padding - 4, height: padding - 4))
        icon.image = UIImage(systemName: iconSystemName)
        
        paddingView.addSubview(icon)
        
        self.leftView = paddingView
        self.leftViewMode = .always
        
    }
    
    
    // MARK: SetPlaceholderWithColor
    func setPlaceholderWithColor(placeholder: String, color: UIColor) {
        self.attributedPlaceholder = NSAttributedString(string: placeholder,
                                                                          attributes: [NSAttributedString.Key.foregroundColor: color])
    }
    
    // MARK: IsEmpty
    func isEmpty() -> Bool {
        if self.text == "" {
            return true
        }
        return false
    }
    
}
