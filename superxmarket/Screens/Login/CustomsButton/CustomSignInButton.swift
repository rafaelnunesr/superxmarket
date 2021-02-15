//
//  CustomSignInButton.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 1/25/21.
//

import UIKit

enum SignInButtonTitle: String {
    case google = "Sign In with Google"
    case facebook = "Sign In with Facebook"
}

enum CompaniesLogo: String {
    case google = "google-logo"
    case facebook = "facebook-logo"
}

class CustomSignInButton: CustomButton {
    
    // MARK: Components
    let companyLogo: UIImageView = UIImageView()
    let verticalLine: UIView = UIView()
    var buttonTitle: SignInButtonTitle?
    var companyLogoName: CompaniesLogo?
    let companyLogoImageSize: CGFloat = 30
    private let fontSize: CGFloat = 18
    
    // MARK: Setup
    func setup(companyLogoName: CompaniesLogo, titleForButton: SignInButtonTitle) {
        super.setup()
        self.buttonTitle = titleForButton
        self.companyLogoName = companyLogoName
        
        self.setupBasicSettings()
    }
    
    // MARK: SetupBasicSettings
    func setupBasicSettings() {
        self.addSubviews()
        self.setupLogoCompany()
        self.setupVerticalLine()
        
        self.backgroundColor = Colors.ligherTransparentWhite
        
        if let _buttonTitle = self.buttonTitle {
            self.setTitle(_buttonTitle.rawValue, for: .normal)
        }
        
        self.titleLabel?.font = UIFont.robotoMedium(size: self.fontSize)
    }
    
    // MARK: AddSubviews
    private func addSubviews() {
        self.addSubview(self.companyLogo)
        self.addSubview(self.verticalLine)
    }
    
    // MARK: SetupLogoCompany
    private func setupLogoCompany() {
        setupCompanyLogoConstraints()
        
        if let _companyLogo = self.companyLogoName {
            self.companyLogo.image = UIImage(named: _companyLogo.rawValue)
        }
        
        self.companyLogo.contentMode = .scaleAspectFit
    }
    
    // MARK: SetupVerticalLine
    private func setupVerticalLine() {
        setupVerticalLineConstraints()
        self.verticalLine.backgroundColor = .white
    }
    
}
