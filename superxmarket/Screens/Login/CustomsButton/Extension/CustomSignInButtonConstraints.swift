//
//  CustomSignInButtonConstraints.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 1/26/21.
//

import Foundation
import UIKit

extension CustomSignInButton {
    
    // MARK: SetupCompanyLogoConstraints
    func setupCompanyLogoConstraints() {
        companyLogo.translatesAutoresizingMaskIntoConstraints = false
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(companyLogo.centerYAnchor.constraint(equalTo: self.centerYAnchor))
        constraints.append(companyLogo.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10))
        constraints.append(companyLogo.heightAnchor.constraint(equalToConstant: companyLogoImageSize))
        constraints.append(companyLogo.widthAnchor.constraint(equalToConstant: companyLogoImageSize))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    // MARK: SetupVerticalLineConstraints
    func setupVerticalLineConstraints() {
        self.verticalLine.translatesAutoresizingMaskIntoConstraints = false
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(self.verticalLine.centerYAnchor.constraint(equalTo: self.centerYAnchor))
        constraints.append(self.verticalLine.leadingAnchor.constraint(equalTo: companyLogo.trailingAnchor, constant: 10))
        constraints.append(self.verticalLine.heightAnchor.constraint(equalToConstant: companyLogoImageSize))
        constraints.append(self.verticalLine.widthAnchor.constraint(equalToConstant: 1))
        
        NSLayoutConstraint.activate(constraints)
    }
}
