//
//  UIFontExtention.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 2/13/21.
//

import Foundation
import UIKit

extension UIFont {
    
    static func robotoThin(size: CGFloat) -> UIFont {
        guard let roboto = UIFont(name: "Roboto-Thin", size: size) else {
            fatalError("""
                Error loading Roboto Thin font.
                """)
        }
        
        return roboto
    }
    
    static func robotoRegular(size: CGFloat) -> UIFont {
        guard let roboto = UIFont(name: "Roboto-Regular", size: size) else {
            fatalError("""
                Error loading Roboto Regular font.
                """)
        }
        
        return roboto
    }
    
    static func robotoMedium(size: CGFloat) -> UIFont {
        guard let roboto = UIFont(name: "Roboto-medium", size: size) else {
            fatalError("""
                Error loading Roboto Medium font.
                """)
        }
        
        return roboto
    }
    
    static func robotoLight(size: CGFloat) -> UIFont {
        guard let roboto = UIFont(name: "Roboto-Light", size: size) else {
            fatalError("""
                Error loading Roboto Light font.
                """)
        }
        
        return roboto
    }
    
    static func robotoBold(size: CGFloat) -> UIFont {
        guard let roboto = UIFont(name: "Roboto-Bold", size: size) else {
            fatalError("""
                Error loading Roboto Bold font.
                """)
        }
        
        return roboto
    }
    
    static func robotoBlack(size: CGFloat) -> UIFont {
        guard let roboto = UIFont(name: "Roboto-Black", size: size) else {
            fatalError("""
                Error loading Roboto Black font.
                """)
        }
        
        return roboto
    }
    
}
