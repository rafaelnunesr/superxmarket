//
//  LoginViewControllerConstraints.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 1/25/21.
//

import Foundation
import UIKit

extension LoginViewController {
    
    // MARK: SetupSuperxLogoConstraints
    func setupSuperxLogoConstraints() {
        superxLogo.translatesAutoresizingMaskIntoConstraints = false
        let logoSize: CGFloat = 250
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(superxLogo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20))
        constraints.append(superxLogo.centerXAnchor.constraint(equalTo: view.centerXAnchor))
        constraints.append(superxLogo.widthAnchor.constraint(equalToConstant: logoSize))
        constraints.append(superxLogo.heightAnchor.constraint(equalToConstant: logoSize))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    // MARK: SetupEmailTextFieldConstraints
    func setupEmailTextFieldConstraints() {
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(emailTextField.topAnchor.constraint(equalTo: superxLogo.bottomAnchor))
        constraints.append(emailTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20))
        constraints.append(emailTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20))
        constraints.append(emailTextField.heightAnchor.constraint(equalToConstant: 50))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    // MARK: SetupPasswordTextFieldConstraints
    func setupPasswordTextFieldConstraints() {
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 10))
        constraints.append(passwordTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20))
        constraints.append(passwordTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20))
        constraints.append(passwordTextField.heightAnchor.constraint(equalToConstant: 50))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    // MARK: SetupContinueButtonConstraints
    func setupContinueButtonConstraints() {
        continueButton.translatesAutoresizingMaskIntoConstraints = false
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(continueButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20))
        constraints.append(continueButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20))
        constraints.append(continueButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    // MARK: SetupRecoverPasswordButtonConstraints
    func setupRecoverPasswordButtonConstraints() {
        recoverPasswordButton.translatesAutoresizingMaskIntoConstraints = false
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(self.recoverPasswordButton.topAnchor.constraint(equalTo: self.continueButton.bottomAnchor, constant: 12))
        constraints.append(self.recoverPasswordButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    // MARK: SetupSignupButtonConstraints
    func setupSignupButtonConstraints() {
        signupButton.translatesAutoresizingMaskIntoConstraints = false
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(self.signupButton.topAnchor.constraint(equalTo: self.continueButton.bottomAnchor, constant: 12))
        constraints.append(self.signupButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    // MARK: SetupLineViewConstraints
    func setupLineViewConstraints() {
        lineView.translatesAutoresizingMaskIntoConstraints = false
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(lineView.topAnchor.constraint(equalTo: self.signupButton.bottomAnchor, constant: 30))
        constraints.append(lineView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20))
        constraints.append(lineView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20))
        constraints.append(lineView.heightAnchor.constraint(equalToConstant: 1))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    // MARK: SetupGoogleButtonConstraints
    func setupGoogleButtonConstraints() {
        googleButton.translatesAutoresizingMaskIntoConstraints = false
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(googleButton.topAnchor.constraint(equalTo: lineView.bottomAnchor, constant: 20))
        constraints.append(googleButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    // MARK: SetupFacebookButtonConstraints
    func setupFacebookButtonConstraints() {
        facebookButton.translatesAutoresizingMaskIntoConstraints = false
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(facebookButton.topAnchor.constraint(equalTo: lineView.bottomAnchor, constant: 20))
        constraints.append(facebookButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    func setupCopyrightLabelConstraints() {
        copyrightLabel.translatesAutoresizingMaskIntoConstraints = false
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(copyrightLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10))
        constraints.append(copyrightLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor))
        
        NSLayoutConstraint.activate(constraints)
    }
    
}
