//
//  CustomSignInButton.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 1/25/21.
//

import UIKit

class CustomSignInButton: CustomButton {
    
    var companyLogo: UIImageView = UIImageView()
    var verticalLine: UIView = UIView()

    var buttonTitle: String?
    var companyLogoName: String?
    
    var companyLogoImageSize: CGFloat = 30
    
    func setup(companyLogoName: String, buttonText: String, width: CGFloat?, height: CGFloat?, cornerRadius: CGFloat?) {
        super.setup(width: width, height: height, cornerRadius: cornerRadius)
        
        self.companyLogoName = companyLogoName
        
        self.setupBasicConstraints()
    }
    
    func setup(companyLogoName: String, buttonText: String) {
        super.setup()
        self.companyLogoName = companyLogoName
        self.setupBasicConstraints()
    }
    
    func setupBasicConstraints() {
        self.addSubviews()
        self.setupLogoCompany()
        self.setupVerticalLine()
    }
    
    private func addSubviews() {
        self.addSubview(self.companyLogo)
        self.addSubview(self.verticalLine)
    }
    
    private func setupLogoCompany() {
        self.setupCompanyLogoConstraints()
        self.companyLogo.contentMode = .scaleAspectFit
    }
    
    private func setupVerticalLine() {
        self.setupVerticalLineConstraints()
        self.verticalLine.backgroundColor = .white
    }
    
    private func setupCompanyLogoConstraints() {
        self.companyLogo.translatesAutoresizingMaskIntoConstraints = false
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(self.companyLogo.centerYAnchor.constraint(equalTo: self.centerYAnchor))
        constraints.append(self.companyLogo.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10))
        constraints.append(self.companyLogo.heightAnchor.constraint(equalToConstant: companyLogoImageSize))
        constraints.append(self.companyLogo.widthAnchor.constraint(equalToConstant: companyLogoImageSize))
        
        NSLayoutConstraint.activate(constraints)
        
        self.companyLogo.image = UIImage(named: self.companyLogoName ?? "")
    }
    
    private func setupVerticalLineConstraints() {
        self.verticalLine.translatesAutoresizingMaskIntoConstraints = false
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(self.verticalLine.centerYAnchor.constraint(equalTo: self.centerYAnchor))
        constraints.append(self.verticalLine.leadingAnchor.constraint(equalTo: companyLogo.trailingAnchor, constant: 10))
        constraints.append(self.verticalLine.heightAnchor.constraint(equalToConstant: companyLogoImageSize))
        constraints.append(self.verticalLine.widthAnchor.constraint(equalToConstant: 1))
        
        NSLayoutConstraint.activate(constraints)
        
    }
    

}
