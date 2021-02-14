//
//  UITextFieldExtension.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 1/26/21.
//

import UIKit

extension UITextField {
    
    // MARK: Padding
    @discardableResult
    func setPadding(amount: CGFloat) -> UIView {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.height))
        
        return paddingView
    }
    
    // MARK: SetLeftPadding
    @discardableResult
    func setLeftPadding(amount: CGFloat) -> UIView {
        let padding = setPadding(amount: amount)
        self.leftView = padding
        self.leftViewMode = .always
        
        return padding
    }
    
    // MARK: SetRightPadding
    @discardableResult
    func setRightPadding(amount:CGFloat) -> UIView {
        let padding = setPadding(amount: amount)
        self.rightView = padding
        self.rightViewMode = .always
        
        return padding
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
