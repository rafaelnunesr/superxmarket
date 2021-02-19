//
//  SignUpViewController.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 2/11/21.
//

import UIKit

class SignUpViewController: UIViewController {

    let signupView = SignUpViewControllerView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backItem = UIBarButtonItem()
        backItem.title = "Login"
        navigationController?.navigationBar.topItem?.backBarButtonItem = backItem
        
        setup()
    }
    
    // MARK: StatusBarStyle
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }

    private func setup() {
        self.view = signupView
        setupNavigationController()
        setupComponents()
    }
    
    private func setupNavigationController() {
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.navigationBar.isHidden = false
        self.navigationController?.navigationBar.tintColor = .white
        self.navigationController?.navigationBar.barTintColor = Colors.mainPurple
        
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        self.navigationController?.navigationBar.isTranslucent = false
    }
    
    private func setupComponents() {
        setupUserName()
        setupEmail()
        setupPhoneNumber()
        setupBirthday()
        setupAddress()
        setupTermsConditions()
        setupSignupButton()
    }
    
    private func setupUserName() {
        self.signupView.userNameTextField.setup(icon: Icons.person, placeholder: "Full Name")
    }
    
    private func setupEmail() {
        self.signupView.emailTextField.setup(icon: Icons.envelope, placeholder: "Email")
    }
    
    private func setupPhoneNumber() {
        self.signupView.phoneNumberTextField.setup(icon: Icons.phone, placeholder: "Phone Number")
    }
    
    private func setupBirthday() {
        self.signupView.birthdayTextField.setup(icon: Icons.calendar, placeholder: "Birthday")
    }
    
    private func setupAddress() {
        self.signupView.addressTextField.setup(icon: Icons.house, placeholder: "Address")
    }
    
    private func setupTermsConditions() {
        self.signupView.termsConditionsLabel.setTitle("I agree with terms and conditions", for: .normal)
        self.signupView.termsConditionsLabel.addTarget(self, action: #selector(termsTapped), for: .touchUpInside)
    }
    
    @objc private func termsTapped() {
        let vc = TermsConditionsViewController()
        present(vc, animated: true)
    }
    
    private func setupSignupButton() {
        self.signupView.signupButton.setTitle("Sign Up", for: .normal)
    }
}
