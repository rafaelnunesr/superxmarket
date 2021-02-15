//
//  UIViewExtension.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 1/25/21.
//

import UIKit

extension UIView {
    
    // MARK: ApplyGradient
    @discardableResult
    func applyGradient(colors: [UIColor]) -> CAGradientLayer {
        return self.applyGradient(colors: colors, locations: nil, startPoint: nil, endPoint: nil, indexLayer: 0)
    }
    
    // MARK: ApplyGradient
    @discardableResult
    func applyGradient(colors: [UIColor], locations: [NSNumber]?, startPoint: CGPoint?, endPoint: CGPoint?, indexLayer: Int) -> CAGradientLayer {
        
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = colors.map { $0.cgColor }
        gradient.locations = locations
        
        if let _startPoint = startPoint {
            gradient.startPoint = _startPoint
        }
        
        if let _endPoint = endPoint {
            gradient.endPoint = _endPoint
        }
        
        self.layer.insertSublayer(gradient, at: UInt32(indexLayer))
        
        return gradient
    }
    
    // MARK: AddShadowEffect
    func addShadowEffect() {
        self.layer.shadowOffset = CGSize(width: 0, height: 3.0)
        self.layer.shadowOpacity = 0.3
        self.layer.shadowRadius = 4.0
        self.layer.shadowColor = UIColor.black.cgColor
    }
    
}
