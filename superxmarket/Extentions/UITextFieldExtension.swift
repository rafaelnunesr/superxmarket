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
