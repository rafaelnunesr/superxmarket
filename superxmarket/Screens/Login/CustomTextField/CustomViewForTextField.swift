//
//  CustomViewForTextField.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 1/26/21.
//

import Foundation
import UIKit

class CustomViewForTextField: UIView {
    
    var rightImageView: UIImageView = UIImageView()
    var bottomLine: UIView = UIView()
    var textField: UITextField = UITextField()
    
    func setup(rightIcon: String, placeholder: String) {
        self.addSubviews()
        self.setRightImageView(rightIcon: rightIcon)
        self.setBottomLine()
    }
    
    func addSubviews() {
        self.addSubview(self.rightImageView)
        self.addSubview(self.bottomLine)
        self.addSubview(self.textField)
    }
    
    func setRightImageView(rightIcon: String) {
        self.setRightImageViewConstraints()
        self.rightImageView.image = UIImage(named: rightIcon)
        self.rightImageView.tintColor = Colors.lighterPurple
        
        self.textField.font = UIFontMetrics.default.scaledFont(for: UIFont.robotoBold(size: 18))
        self.textField.adjustsFontForContentSizeCategory = true
    }
    
    func setBottomLine() {
        self.setBottomLineConstraints()
        self.bottomLine.backgroundColor = Colors.lighterPurple
    }
    
    func setRightImageViewConstraints() {
        self.rightImageView.translatesAutoresizingMaskIntoConstraints = false
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(self.rightImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor))
        constraints.append(self.rightImageView.widthAnchor.constraint(equalToConstant: 20))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    func setBottomLineConstraints() {
        self.bottomLine.translatesAutoresizingMaskIntoConstraints = false
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(self.bottomLine.bottomAnchor.constraint(equalTo: self.bottomAnchor))
        constraints.append(self.bottomLine.widthAnchor.constraint(equalTo: self.widthAnchor, constant: -40))
        constraints.append(self.bottomLine.heightAnchor.constraint(equalToConstant: 1))
        constraints.append(self.bottomLine.trailingAnchor.constraint(equalTo: self.trailingAnchor))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    
    
}
