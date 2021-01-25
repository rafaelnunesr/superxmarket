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
        self.setupView()
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
        self.continueButton.delegate = self
        self.recoverPasswordButton.delegate = self
        self.signupButton.delegate = self
        self.googleButton.delegate = self
        self.facebookButton.delegate = self
    }
    
    // MARK: SetupView
    private func setupView() {
        let gradient: CAGradientLayer = CAGradientLayer()

        gradient.colors = [Colors.mainGreen.cgColor, Colors.mainPurple.cgColor]
        gradient.locations = [0, 0.2]
        gradient.startPoint = CGPoint(x: 0.1, y: 0.999)
        gradient.endPoint = CGPoint(x: 0.1, y: 0.1)
        gradient.frame = CGRect(x: 0.0, y: 0.0, width: self.view.frame.size.width, height: self.view.frame.size.height)

        self.view.layer.insertSublayer(gradient, at: 0)
        
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
        self.emailTextField.backgroundColor = Colors.ligherPuple
        self.emailTextField.layer.cornerRadius = 10
        self.emailTextField.attributedPlaceholder = NSAttributedString(string: "    Email",
                                                                          attributes: [NSAttributedString.Key.foregroundColor: Colors.darkerPuple])
    }
    
    // MARK: SetupPasswordTextField
    private func setupPasswordTextField() {
        setupPasswordTextFieldConstraints()
        self.passwordTextField.backgroundColor = Colors.ligherPuple
        self.passwordTextField.layer.cornerRadius = 10
        self.passwordTextField.attributedPlaceholder = NSAttributedString(string: "    Password",
                                                                          attributes: [NSAttributedString.Key.foregroundColor: Colors.darkerPuple])
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
        self.recoverPasswordButton.setTitleColor(Colors.ligherPuple, for: .normal)

    }
    
    // MARK: SetupSignupButton
    private func setupSignupButton() {
        self.signupButton.setup(width: 160, height: 20, cornerRadius: nil)
        setupSignupButtonConstraints()
        self.signupButton.setTitle("Sign Up", for: .normal)
        self.signupButton.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.right
        self.signupButton.setTitleColor(Colors.ligherRed, for: .normal)
    
    }
    
    // MARK: SetupLineView
    private func setupLineView() {
        setupLineViewConstraints()
        self.lineView.backgroundColor = Colors.darkerPuple
    }
    
    // MARK: SetupGoogleButton
    private func setupGoogleButton() {
        setupGoogleButtonConstraints()
        self.googleButton.setup(companyLogoName: "google-logo", buttonText: "Sign In", width: 160, height: nil, cornerRadius: nil)
        self.googleButton.backgroundColor = Colors.ligherPuple
        self.googleButton.setTitle("         SIGN IN", for: .normal)
        
    }
    
    // MARK: SetupFacebookButton
    private func setupFacebookButton() {
        setupFacebookButtonConstraints()
        self.facebookButton.setup(companyLogoName: "facebook-logo", buttonText: "Sign In", width: 160, height: nil, cornerRadius: nil)
        self.facebookButton.backgroundColor = Colors.ligherPuple
        self.facebookButton.setTitle("         SIGN IN", for: .normal)
    }
    
    private func setupCopyrightLabel() {
        setupCopyrightLabelConstraints()
        self.copyrightLabel.text = "Copyright © 2021 superxmarket. All rights reserved."
        self.copyrightLabel.textColor = .white
        self.copyrightLabel.textAlignment = .center
        self.copyrightLabel.font = UIFont(name: "Arial", size: 13)
    }
    
}

extension LoginViewController: CustomButtonDelegate {
    func tappedButton() {
        print("tapped")
    }
}

extension LoginViewController {
    
    // MARK: SetupSuperxLogoConstraints
    func setupSuperxLogoConstraints() {
        superxLogo.translatesAutoresizingMaskIntoConstraints = false
        let logoSize: CGFloat = 250
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(superxLogo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60))
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
        
        constraints.append(copyrightLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor))
        constraints.append(copyrightLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor))
        
        NSLayoutConstraint.activate(constraints)
    }
    
}
