//
//  CustomTextField.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 2/12/21.
//

import Foundation
import UIKit

class CustomTextField: UITextField {
    
    var height: CGFloat = 52
    
    func setup(iconName: String, placeholder: String) {
        self.setupConstraints()
        
        self.layer.cornerRadius = 10
        self.backgroundColor = .white
        self.textColor = Colors.mainPurple
        self.layer.shadowOffset = CGSize(width: 0, height: 3.0)
        self.layer.shadowOpacity = 0.3
        self.layer.shadowRadius = 4.0
        self.layer.shadowColor = UIColor.black.cgColor
        
        self.attributedPlaceholder = NSAttributedString(string: placeholder,
                                                        attributes: [NSAttributedString.Key.foregroundColor: Colors.mainPurple])
    }
    
    private func setupConstraints() {
        self.translatesAutoresizingMaskIntoConstraints = false
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(self.heightAnchor.constraint(equalToConstant: height))
        
        NSLayoutConstraint.activate(constraints)
    }
    
}
