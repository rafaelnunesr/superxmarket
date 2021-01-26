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
    
    // MARK: Components
    var width: CGFloat?
    var height: CGFloat = 50
    var cornerRadius: CGFloat = 10
    
    // MARK: Setup
    func setup() {
        return self.setup(width: nil, height: nil, cornerRadius: nil)
    }
    
    // MARK: Setup
    func setup(width: CGFloat?, height: CGFloat?, cornerRadius: CGFloat?) {
        self.updateConstantsValues(width: width, height: height, cornerRadius: cornerRadius)
        self.layer.cornerRadius = self.cornerRadius
        self.setupButtonConstraints()
        self.addTarget(self, action: #selector(tapped), for: .touchUpInside)
    }

    // MARK: Tapped
    @objc func tapped() {
        self.delegate?.tappedButton()
    }
    
    // MARK: UpdateConstantsValues
    private func updateConstantsValues(width: CGFloat?, height: CGFloat?, cornerRadius: CGFloat?) {
        
        if let _width = width {
            self.width = _width
        }
                
        if let _height = height {
            self.height = _height
        }
        
        if let _cornerRadius = cornerRadius {
            self.cornerRadius = _cornerRadius
        }
                
    }
    
    // MARK: SetupButtonConstraints
    private func setupButtonConstraints() {
        self.translatesAutoresizingMaskIntoConstraints = false
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(self.heightAnchor.constraint(equalToConstant: height))
        
        if let _width = self.width {
            constraints.append(self.widthAnchor.constraint(equalToConstant: _width))
        }
        
        NSLayoutConstraint.activate(constraints)
    }

}
