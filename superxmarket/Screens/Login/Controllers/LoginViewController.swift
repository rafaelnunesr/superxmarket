//
//  LoginViewController.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 1/25/21.
//

import UIKit

class LoginViewController: UIViewController {
    
    let loginView = LoginViewControllerView()
    
    // MARK: ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = loginView
        navigationController?.isNavigationBarHidden = true
        self.setup()
    }
    
    // MARK: StatusBarStyle
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    private func setup() {
        self.setupComponents()
        self.setupDelegates()
    }
    
    private func setupComponents() {
        self.setupSuperxLogo()
        self.setupEmailTextField()
        self.setupPasswordTextField()
        self.setupPasswordTextField()
        self.setupContinueButton()
        self.setupRecoverPasswordButton()
        self.setupSignupButton()
        self.setupLineView()
        self.setupGoogleButton()
        self.setupFacebookButton()
        self.setupCopyrightLabel()
    }
    
    private func setupDelegates() {
        self.loginView.emailTextField.delegate = self
        self.loginView.passwordTextField.delegate = self
        self.loginView.continueButton.delegate = self
        self.loginView.googleButton.delegate = self
        self.loginView.facebookButton.delegate = self
    }
    
    // MARK: SetupSuperxLogo
    private func setupSuperxLogo() {
        self.loginView.superxLogo.image = UIImage(named: "logo")
        self.loginView.superxLogo.layer.masksToBounds = true
        self.loginView.superxLogo.contentMode = .scaleAspectFit
    }
    
    // MARK: SetupEmailTextField
    private func setupEmailTextField() {
        self.loginView.emailTextField.setup(icon: Icons.person, placeholder: "Email")
        self.loginView.emailTextField.keyboardType = .emailAddress
        self.loginView.emailTextField.autocapitalizationType = .none
    }
    
    // MARK: SetupPasswordTextField
    private func setupPasswordTextField() {
        self.loginView.passwordTextField.setup(icon: Icons.lock, placeholder: "Password")
        self.loginView.passwordTextField.isSecureTextEntry = true
    }
    
    // MARK: SetupContinueButton
    private func setupContinueButton() {
        self.loginView.continueButton.setup()
        self.loginView.continueButton.setTitle("Sign In", for: .normal)
        self.loginView.continueButton.backgroundColor = Colors.darkerPurple.withAlphaComponent(0.65)
        self.loginView.continueButton.titleLabel?.font = UIFont.robotoMedium(size: 18)
    }
    
    // MARK: SetupRecoverPasswordButton
    private func setupRecoverPasswordButton() {
        self.loginView.recoverPasswordButton.height = 10
        self.loginView.recoverPasswordButton.width = 160
        self.loginView.recoverPasswordButton.setup()
        self.loginView.recoverPasswordButton.setTitle("Forgot Password", for: .normal)
        self.loginView.recoverPasswordButton.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        self.loginView.recoverPasswordButton.setTitleColor(.white, for: .normal)
        self.loginView.recoverPasswordButton.titleLabel?.font = UIFont.robotoMedium(size: 15)

    }
    
    // MARK: SetupSignupButton
    private func setupSignupButton() {
        self.loginView.signupButton.height = 20
        self.loginView.signupButton.width = 160
        self.loginView.signupButton.setup()
        self.loginView.signupButton.titleLabel?.font = UIFont.robotoMedium(size: 15)
        self.loginView.signupButton.setTitle("Sign Up", for: .normal)
        self.loginView.signupButton.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.right
        self.loginView.signupButton.setTitleColor(.white, for: .normal)
    
        self.loginView.signupButton.addTarget(self, action: #selector(signupTapped), for: .touchUpInside)
    }
    
    @objc private func signupTapped() {
        let vc = SignUpViewController()
        vc.title = "Create an account"
        navigationController?.pushViewController(vc, animated: true)
    }
    
    // MARK: SetupLineView
    private func setupLineView() {
        self.loginView.lineView.backgroundColor = .white
    }
    
    // MARK: SetupGoogleButton
    private func setupGoogleButton() {
        self.loginView.googleButton.setup(companyLogoName: CompaniesLogo.google, titleForButton: SignInButtonTitle.google)
    }
    
    // MARK: SetupFacebookButton
    private func setupFacebookButton() {
        self.loginView.facebookButton.setup(companyLogoName: CompaniesLogo.facebook, titleForButton: SignInButtonTitle.facebook)
    }
    
    // MARK: SetupCopyrightLabel
    private func setupCopyrightLabel() {
        self.loginView.copyrightLabel.text = "Copyright © 2021 Superxmarket. All rights reserved."
        self.loginView.copyrightLabel.textColor = .white
        self.loginView.copyrightLabel.textAlignment = .center
        self.loginView.copyrightLabel.font = UIFont.robotoRegular(size: 13)
    }
    
}

