//
//  LoginViewControllerViewCodeViewProtocolExtension.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 2/16/21.
//

import Foundation

extension LoginViewControllerView: CodeViewProtocol {
    
    // MARK: BuildViewHierarchy
    func buildViewHierarchy() {
        self.addSubview(superxLogo)
        self.addSubview(emailTextField)
        self.addSubview(passwordTextField)
        self.addSubview(continueButton)
        self.addSubview(recoverPasswordButton)
        self.addSubview(signupButton)
        self.addSubview(lineView)
        self.addSubview(googleButton)
        self.addSubview(facebookButton)
        self.addSubview(copyrightLabel)
    }
    
    // MARK: SetupConstraints
    func setupConstraints() {
        setupSuperxLogoConstraints()
        setupEmailTextFieldConstraints()
        setupPasswordTextFieldConstraints()
        setupContinueButtonConstraints()
        setupRecoverPasswordButtonConstraints()
        setupSignupButtonConstraints()
        setupLineViewConstraints()
        setupGoogleButtonConstraints()
        setupFacebookConstraints()
        setupCopyrightLabelConstraints()
    }
}
