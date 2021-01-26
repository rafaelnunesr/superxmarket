//
//  CustomSignInButton.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 1/25/21.
//

import UIKit

class CustomSignInButton: CustomButton {
    
    // MARK: Components
    var companyLogo: UIImageView = UIImageView()
    var verticalLine: UIView = UIView()
    var buttonTitle: String?
    var companyLogoName: String?
    var companyLogoImageSize: CGFloat = 30
    
    // MARK: Setup
    func setup(companyLogoName: String) -> Any {
        super.setup()
        return self.setup(companyLogoName: companyLogoName, width: nil, height: nil, cornerRadius: nil)
    }
    
    // MARK: Setup
    func setup(companyLogoName: String, width: CGFloat?, height: CGFloat?, cornerRadius: CGFloat?) {
        super.setup(width: width, height: height, cornerRadius: cornerRadius)
        self.companyLogoName = companyLogoName
        self.setupBasicSettings()
    }
    
    // MARK: SetupBasicSettings
    func setupBasicSettings() {
        self.addSubviews()
        self.setupLogoCompany()
        self.setupVerticalLine()
    }
    
    // MARK: AddSubviews
    private func addSubviews() {
        self.addSubview(self.companyLogo)
        self.addSubview(self.verticalLine)
    }
    
    // MARK: SetupLogoCompany
    private func setupLogoCompany() {
        setupCompanyLogoConstraints()
        self.companyLogo.image = UIImage(named: self.companyLogoName ?? "")
        self.companyLogo.contentMode = .scaleAspectFit
    }
    
    // MARK: SetupVerticalLine
    private func setupVerticalLine() {
        setupVerticalLineConstraints()
        self.verticalLine.backgroundColor = .white
    }
    
}
