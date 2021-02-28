//
//  LoginViewControllerViewConstraintsExtension.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 2/16/21.
//

import UIKit

extension LoginViewControllerView {
    
    // MARK: SetupSuperxLogoConstraints
    func setupSuperxLogoConstraints() {
        
        superxLogo.translatesAutoresizingMaskIntoConstraints = false
        
        let screenSize: CGRect = UIScreen.main.bounds
        let topAnchor: CGFloat = screenSize.height * 0.07
        
        superxLogo.topAnchor.constraint(equalTo: self.topAnchor, constant: topAnchor).isActive = true
        superxLogo.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        superxLogo.heightAnchor.constraint(equalToConstant: 200).isActive = true
        superxLogo.widthAnchor.constraint(equalToConstant: 200).isActive = true
    }
    
    // MARK: SetupEmailTextFieldConstraints
    func setupEmailTextFieldConstraints() {
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.topAnchor.constraint(equalTo: superxLogo.bottomAnchor, constant: 40).isActive = true
        emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: self.viewPadding).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -self.viewPadding).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 52).isActive = true
    }
    
    // MARK: SetupPasswordTextFieldConstraints
    func setupPasswordTextFieldConstraints() {
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 10).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: self.viewPadding).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -self.viewPadding).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 52).isActive = true
    }
    
    // MARK: SetupContinueButtonConstraints
    func setupContinueButtonConstraints() {
        continueButton.translatesAutoresizingMaskIntoConstraints = false
        continueButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 15).isActive = true
        continueButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: self.viewPadding).isActive = true
        continueButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -self.viewPadding).isActive = true
    }
    
    // MARK: SetupRecoverPasswordButtonConstraints
    func setupRecoverPasswordButtonConstraints() {
        recoverPasswordButton.translatesAutoresizingMaskIntoConstraints = false
        recoverPasswordButton.topAnchor.constraint(equalTo: continueButton.bottomAnchor, constant: 12).isActive = true
        recoverPasswordButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: self.viewPadding).isActive = true
    }
    
    // MARK: SetupSignupButtonConstraints
    func setupSignupButtonConstraints() {
        signupButton.translatesAutoresizingMaskIntoConstraints = false
       signupButton.topAnchor.constraint(equalTo: continueButton.bottomAnchor, constant: 12).isActive = true
        signupButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -self.viewPadding).isActive = true
    }
    
    // MARK: SetupLineViewConstraints
    func setupLineViewConstraints() {
        lineView.translatesAutoresizingMaskIntoConstraints = false
       lineView.topAnchor.constraint(equalTo: signupButton.bottomAnchor, constant: 20).isActive = true
        lineView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: self.viewPadding).isActive = true
        lineView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -self.viewPadding).isActive = true
        lineView.heightAnchor.constraint(equalToConstant: 0.7).isActive = true
    }
    
    // MARK: SetupGoogleButtonConstraints
    func setupGoogleButtonConstraints() {
        googleButton.translatesAutoresizingMaskIntoConstraints = false

        googleButton.topAnchor.constraint(equalTo: lineView.bottomAnchor, constant: 10).isActive = true
        googleButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: self.viewPadding).isActive = true
        googleButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -self.viewPadding).isActive = true
    }
    
    // MARK: SetupFacebookConstraints
    func setupFacebookConstraints() {
        facebookButton.translatesAutoresizingMaskIntoConstraints = false
        facebookButton.topAnchor.constraint(equalTo: googleButton.bottomAnchor, constant: 10).isActive = true
        facebookButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: self.viewPadding).isActive = true
        facebookButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -self.viewPadding).isActive = true
    }
    
    // MARK: SetupCopyrightLabelConstraints
    func setupCopyrightLabelConstraints() {
        copyrightLabel.translatesAutoresizingMaskIntoConstraints = false
        copyrightLabel.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -3).isActive = true
        copyrightLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    }
}
