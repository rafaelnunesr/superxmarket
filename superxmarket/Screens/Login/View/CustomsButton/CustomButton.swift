//
//  CustomButton.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 1/25/21.
//

import UIKit

class CustomButton: UIButton {
    
    // MARK: Delegate
    weak var delegate: CustomButtonDelegate?
    
    var width: CGFloat?
    var height: CGFloat = 50
    var cornerRadius: CGFloat = 10
    
    // MARK: Setup
    func setup(width: CGFloat?, height: CGFloat?, cornerRadius: CGFloat?) {
        
        if let _cornerRadius = cornerRadius {
            self.cornerRadius = _cornerRadius
        }

        self.layer.cornerRadius = self.cornerRadius
        self.setupButtonConstraints(height, width)
    }

    // MARK: Setup
    func setup() {
        self.layer.cornerRadius = self.cornerRadius
        self.setupButtonConstraints(nil, nil)
        self.addTarget(self, action: #selector(tapped), for: .touchUpInside)
    }
    
    // MARK: Tapped
    @objc func tapped() {
        self.delegate?.tappedButton()
    }
    
    // MARK: SetupButtonConstraints
    private func setupButtonConstraints(_ height: CGFloat?, _ width: CGFloat?) {
        self.translatesAutoresizingMaskIntoConstraints = false
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(self.heightAnchor.constraint(equalToConstant: height ?? 50))
        
        if let _width = width {
            constraints.append(self.widthAnchor.constraint(equalToConstant: _width))
        }
        
        NSLayoutConstraint.activate(constraints)
    }

}
