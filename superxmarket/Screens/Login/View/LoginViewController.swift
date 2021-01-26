//
//  LoginViewController.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 1/25/21.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: Components
    var superxLogo: UIImageView = UIImageView()
    var emailTextField: UITextField = UITextField()
    //var emailTextField: CustomViewForTextField = CustomViewForTextField()
    var passwordTextField: UITextField = UITextField()
    var continueButton: CustomButton = CustomButton()
    var recoverPasswordButton: CustomButton = CustomButton()
    var signupButton: CustomButton = CustomButton()
    var lineView: UIView = UIView()
    var googleButton: CustomSignInButton = CustomSignInButton()
    var facebookButton: CustomSignInButton = CustomSignInButton()
    var copyrightLabel: UILabel = UILabel()
    
    // MARK: ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }
    
    // MARK: StatusBarStyle
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    // MARK: Setup
    private func setup() {
        self.addSubviews()
        self.setupDelegates()
        self.setupBackgroundView()
        self.setupComponents()
    }
    
    // MARK: AddSubviews
    private func addSubviews() {
        self.view.addSubview(self.superxLogo)
        self.view.addSubview(self.emailTextField)
        self.view.addSubview(self.passwordTextField)
        self.view.addSubview(self.continueButton)
        self.view.addSubview(self.recoverPasswordButton)
        self.view.addSubview(self.signupButton)
        self.view.addSubview(self.lineView)
        self.view.addSubview(self.googleButton)
        self.view.addSubview(self.facebookButton)
        self.view.addSubview(self.copyrightLabel)
    }
    
    // MARK: SetupDelegates
    private func setupDelegates() {
        //self.emailTextField.delegate = self
        self.passwordTextField.delegate = self
        self.continueButton.delegate = self
        self.recoverPasswordButton.delegate = self
        self.signupButton.delegate = self
        self.googleButton.delegate = self
        self.facebookButton.delegate = self
    }
    
    // MARK: SetupView
    private func setupBackgroundView() {
        
        let gradientBackground: [UIColor] = [Colors.darkPurple, Colors.mainPurple]
        let location: [NSNumber] = [0, 0.25]
        let starPoint: CGPoint = CGPoint(x: 0.1, y: 1)
        let endPoint: CGPoint = CGPoint(x: 0.1, y: 0.1)
        
        self.view.applyGradient(colors: gradientBackground, locations: location, startPoint: starPoint, endPoint: endPoint, indexLayer: 0)
    }
    
    
    // MARK: SetupComponents
    private func setupComponents() {
        self.setupSuperxLogo()
        self.setupEmailTextField()
        self.setupPasswordTextField()
        self.setupContinueButton()
        self.setupGoogleButton()
        self.setupFacebookButton()
        self.setupRecoverPasswordButton()
        self.setupSignupButton()
        self.setupLineView()
        self.setupCopyrightLabel()
    }
    
    // MARK: SetupSuperxLogo
    private func setupSuperxLogo() {
        setupSuperxLogoConstraints()
        self.superxLogo.image = UIImage(named: "superxLogo")
        self.superxLogo.layer.masksToBounds = true
        self.superxLogo.contentMode = .scaleAspectFit
    }
    
    // MARK: SetupEmailTextField
    private func setupEmailTextField() {
        setupEmailTextFieldConstraints()
        self.emailTextField.backgroundColor = Colors.ligherPurple
        self.emailTextField.layer.cornerRadius = 10
        //self.emailTextField.setLeftPadding(amount: 100)
        self.emailTextField.setRightPaddingWithIcon(amount: 10, iconSize: 30, iconSystemName: "person.fill", iconColor: Colors.mainPurple)
        self.emailTextField.setPlaceholderWithColor(placeholder: "Email", color: Colors.darkPurple)
        self.emailTextField.textColor = Colors.darkerPurple
        self.emailTextField.keyboardType = .emailAddress
    }
    
    // MARK: SetupPasswordTextField
    private func setupPasswordTextField() {
        setupPasswordTextFieldConstraints()
        self.passwordTextField.backgroundColor = Colors.ligherPurple
        self.passwordTextField.layer.cornerRadius = 10
        self.passwordTextField.setLeftPadding(amount: 10)
        self.passwordTextField.setPlaceholderWithColor(placeholder: "Password", color: Colors.darkPurple)
        self.passwordTextField.textColor = Colors.darkerPurple
        self.passwordTextField.isSecureTextEntry = true
    }
    
    // MARK: SetupContinueButton
    private func setupContinueButton() {
        self.continueButton.setup()
        setupContinueButtonConstraints()
        self.continueButton.setTitle("CONTINUE", for: .normal)
        self.continueButton.backgroundColor = Colors.mainGreen
    }
    
    // MARK: SetupRecoverPasswordButton
    private func setupRecoverPasswordButton() {
        self.recoverPasswordButton.setup(width: 160, height: 20, cornerRadius: nil)
        setupRecoverPasswordButtonConstraints()
        self.recoverPasswordButton.setTitle("Forgot Password", for: .normal)
        self.recoverPasswordButton.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.left
        self.recoverPasswordButton.setTitleColor(Colors.darkerPurple, for: .normal)

    }
    
    // MARK: SetupSignupButton
    private func setupSignupButton() {
        self.signupButton.setup(width: 160, height: 20, cornerRadius: nil)
        setupSignupButtonConstraints()
        self.signupButton.setTitle("Sign Up", for: .normal)
        self.signupButton.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.right
        self.signupButton.setTitleColor(Colors.darkerPurple, for: .normal)
    
    }
    
    // MARK: SetupLineView
    private func setupLineView() {
        setupLineViewConstraints()
        self.lineView.backgroundColor = Colors.darkPurple
    }
    
    // MARK: SetupGoogleButton
    private func setupGoogleButton() {
        setupGoogleButtonConstraints()
        self.googleButton.setup(companyLogoName: "google-logo", width: 160, height: nil, cornerRadius: nil)
        self.googleButton.backgroundColor = Colors.ligherPurple
        self.googleButton.setTitle("         SIGN IN", for: .normal)
    }
    
    // MARK: SetupFacebookButton
    private func setupFacebookButton() {
        setupFacebookButtonConstraints()
        self.facebookButton.setup(companyLogoName: "facebook-logo", width: 160, height: nil, cornerRadius: nil)
        self.facebookButton.backgroundColor = Colors.ligherPurple
        self.facebookButton.setTitle("         SIGN IN", for: .normal)
    }
    
    // MARK: SetupCopyrightLabel
    private func setupCopyrightLabel() {
        setupCopyrightLabelConstraints()
        self.copyrightLabel.text = "Copyright © 2021 superxmarket. All rights reserved."
        self.copyrightLabel.textColor = Colors.ligherPurple
        self.copyrightLabel.textAlignment = .center
        self.copyrightLabel.font = UIFont(name: "Arial", size: 14)
    }
    
}
