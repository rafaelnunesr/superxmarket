//
//  LoginViewControllerView.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 2/16/21.
//

import UIKit

final class LoginViewControllerView: UIView {
    
    // MARK: Components
    var superxLogo: UIImageView = UIImageView()
    var emailTextField: LoginTextField = LoginTextField()
    var passwordTextField: LoginTextField = LoginTextField()
    var continueButton: CustomButton = CustomButton()
    var recoverPasswordButton: CustomButton = CustomButton()
    var signupButton: CustomButton = CustomButton()
    var lineView: UIView = UIView()
    var googleButton: CustomSignInButton = CustomSignInButton()
    var facebookButton: CustomSignInButton = CustomSignInButton()
    var copyrightLabel: UILabel = UILabel()
    
    // MARK: Variables
    let viewPadding: CGFloat = 20
 
    // MARK:
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        self.setupGradientBackgroundColor()
        self.buildViewHierarchy()
        self.setupConstraints()
        self.setupAditionalConfiguration()
    }
    
    // MARK:
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupGradientBackgroundColor() {
        
        let gradientBackground: [UIColor] = [Colors.lighterPurple, Colors.lightPurple, Colors.mainPurple, Colors.mainPurple, Colors.mainPurple]
        let location: [NSNumber] = [0, 0.25]
        let starPoint: CGPoint = CGPoint(x: 0.1, y: 1)
        let endPoint: CGPoint = CGPoint(x: 0.1, y: 0.1)
        
        self.applyGradient(colors: gradientBackground, locations: location, startPoint: starPoint, endPoint: endPoint, indexLayer: 0)
    }
        
}

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
        self.setupSuperxLogoConstraints()
        self.setupEmailTextFieldConstraints()
        self.setupPasswordTextFieldConstraints()
        self.setupContinueButtonConstraints()
        self.setupRecoverPasswordButtonConstraints()
        self.setupSignupButtonConstraints()
        self.setupLineViewConstraints()
        self.setupGoogleButtonConstraints()
        self.setupFacebookConstraints()
        self.setupCopyrightLabelConstraints()
    }
    
    // MARK: SetupAditionalConfiguration
    func setupAditionalConfiguration() {
        
    }
    
    // MARK: SetupSuperxLogoConstraints
    private func setupSuperxLogoConstraints() {
        let logoSize: CGFloat = 230
        
        superxLogo.translatesAutoresizingMaskIntoConstraints = false
        superxLogo.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 40).isActive = true
        superxLogo.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        superxLogo.widthAnchor.constraint(equalToConstant: logoSize).isActive = true
        superxLogo.heightAnchor.constraint(equalToConstant: logoSize).isActive = true
    }
    
    // MARK: SetupEmailTextFieldConstraints
    private func setupEmailTextFieldConstraints() {
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.topAnchor.constraint(equalTo: superxLogo.bottomAnchor, constant: 70).isActive = true
        emailTextField.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: self.viewPadding).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -self.viewPadding).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 52).isActive = true
    }
    
    // MARK: SetupPasswordTextFieldConstraints
    private func setupPasswordTextFieldConstraints() {
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 10).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: self.viewPadding).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -self.viewPadding).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 52).isActive = true
    }
    
    // MARK: SetupContinueButtonConstraints
    private func setupContinueButtonConstraints() {
        continueButton.translatesAutoresizingMaskIntoConstraints = false
        continueButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 15).isActive = true
        continueButton.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: self.viewPadding).isActive = true
        continueButton.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -self.viewPadding).isActive = true
    }
    
    // MARK: SetupRecoverPasswordButtonConstraints
    private func setupRecoverPasswordButtonConstraints() {
        recoverPasswordButton.translatesAutoresizingMaskIntoConstraints = false
        recoverPasswordButton.topAnchor.constraint(equalTo: continueButton.bottomAnchor, constant: 12).isActive = true
        recoverPasswordButton.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: self.viewPadding).isActive = true
    }
    
    // MARK: SetupSignupButtonConstraints
    private func setupSignupButtonConstraints() {
        signupButton.translatesAutoresizingMaskIntoConstraints = false
       signupButton.topAnchor.constraint(equalTo: continueButton.bottomAnchor, constant: 12).isActive = true
        signupButton.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -self.viewPadding).isActive = true
    }
    
    // MARK:
    private func setupLineViewConstraints() {
        lineView.translatesAutoresizingMaskIntoConstraints = false
       lineView.topAnchor.constraint(equalTo: signupButton.bottomAnchor, constant: 20).isActive = true
        lineView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: self.viewPadding).isActive = true
        lineView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -self.viewPadding).isActive = true
        lineView.heightAnchor.constraint(equalToConstant: 0.7).isActive = true
    }
    
    // MARK:
    private func setupGoogleButtonConstraints() {
        googleButton.translatesAutoresizingMaskIntoConstraints = false
        
        googleButton.topAnchor.constraint(equalTo: lineView.bottomAnchor, constant: 20).isActive = true
        googleButton.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: self.viewPadding).isActive = true
        googleButton.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -self.viewPadding).isActive = true
    }
    
    // MARK:
    private func setupFacebookConstraints() {
        facebookButton.translatesAutoresizingMaskIntoConstraints = false
        facebookButton.topAnchor.constraint(equalTo: googleButton.bottomAnchor, constant: 10).isActive = true
        facebookButton.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: self.viewPadding).isActive = true
        facebookButton.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -self.viewPadding).isActive = true
    }
    
    // MARK: 
    private func setupCopyrightLabelConstraints() {
        copyrightLabel.translatesAutoresizingMaskIntoConstraints = false
        copyrightLabel.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: -3).isActive = true
        copyrightLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    }
}
