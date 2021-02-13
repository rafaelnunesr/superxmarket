//
//  UIFontExtention.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 2/13/21.
//

import Foundation
import UIKit

enum Roboto: String {
    case thin = "Roboto-Thin"
    case regular = "Roboto-Regular"
    case medium = "Roboto-Medium"
    case light = "Roboto-Light"
    case bold = "Roboto-Bold"
    case black = "Roboto-Black"
}


extension UIFont {
    
    // MARK: Roboto Thin
    static func robotoThin(size: CGFloat) -> UIFont {
        guard let roboto = UIFont(name: Roboto.thin.rawValue, size: size) else {
            fatalError("""
                Error loading Roboto Thin font.
                """)
        }
        
        return roboto
    }
    
    // MARK: Roboto Regular
    static func robotoRegular(size: CGFloat) -> UIFont {
        guard let roboto = UIFont(name: Roboto.regular.rawValue, size: size) else {
            fatalError("""
                Error loading Roboto Regular font.
                """)
        }
        
        return roboto
    }
    
    // MARK: Roboto Medium
    static func robotoMedium(size: CGFloat) -> UIFont {
        guard let roboto = UIFont(name: Roboto.medium.rawValue, size: size) else {
            fatalError("""
                Error loading Roboto Medium font.
                """)
        }
        
        return roboto
    }
    
    // MARK: Roboto Light
    static func robotoLight(size: CGFloat) -> UIFont {
        guard let roboto = UIFont(name: Roboto.light.rawValue, size: size) else {
            fatalError("""
                Error loading Roboto Light font.
                """)
        }
        
        return roboto
    }
    
    // MARK: Roboto Bold
    static func robotoBold(size: CGFloat) -> UIFont {
        guard let roboto = UIFont(name: Roboto.bold.rawValue, size: size) else {
            fatalError("""
                Error loading Roboto Bold font.
                """)
        }
        
        return roboto
    }
    
    // Mark: Roboto Black
    static func robotoBlack(size: CGFloat) -> UIFont {
        guard let roboto = UIFont(name: Roboto.black.rawValue, size: size) else {
            fatalError("""
                Error loading Roboto Black font.
                """)
        }
        
        return roboto
    }
    
}
