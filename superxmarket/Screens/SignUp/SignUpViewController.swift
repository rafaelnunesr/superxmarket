//
//  SignUpViewController.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 2/11/21.
//

import UIKit

class SignUpViewController: UIViewController {
    
    let header: UIView = UIView()
    let profilePhoto: UIImageView = UIImageView()
    let userNameTextField: SignupTextField = SignupTextField()
    let emailTextField: SignupTextField = SignupTextField()
    let phoneNumberTextField: SignupTextField = SignupTextField()
    let birthdayTextField: SignupTextField = SignupTextField()
    let addressTextField: SignupTextField = SignupTextField()
    let checkbox: UIButton = UIButton()
    let termsConditionsLabel: UIButton = UIButton()
    let signupButton: UIButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
        self.view.backgroundColor = UIColor(red: 0.97, green: 0.97, blue: 0.97, alpha: 1)
        self.navigationController?.isNavigationBarHidden = false
        self.navigationController?.navigationBar.barTintColor = Colors.mainPurple
        
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        self.navigationController?.navigationBar.isTranslucent = false
    }
    
    // MARK: StatusBarStyle
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    private func setup(){
        self.addComponentsToView()
        self.addDelegates()
        self.setupComponents()
    }
    
    private func addDelegates() {
        
    }
    
    private func addComponentsToView() {
        self.view.addSubview(self.header)
        self.view.addSubview(self.profilePhoto)
        self.view.addSubview(self.userNameTextField)
        self.view.addSubview(self.emailTextField)
        self.view.addSubview(self.phoneNumberTextField)
        self.view.addSubview(self.birthdayTextField)
        self.view.addSubview(self.addressTextField)
        self.view.addSubview(self.checkbox)
        self.view.addSubview(self.termsConditionsLabel)
        self.view.addSubview(self.signupButton)
    }
    
    private func setupComponents() {
        self.setupHeader()
        self.setupProfilePhoto()
        self.setupUserNameTextField()
        self.setupEmailTextField()
        self.setupPhoneNumber()
        self.setupBirthday()
        self.setupAddressTextField()
        self.setupCheckbox()
        self.setupTermsAndConditionsLabel()
        self.setupSignupButton()
    }
    
    private func setupHeader() {
        addHeaderConstraints()
        
        self.header.backgroundColor = Colors.mainPurple
    }
    
    func addHeaderConstraints() {
        header.translatesAutoresizingMaskIntoConstraints = false
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(header.topAnchor.constraint(equalTo: view.topAnchor))
        constraints.append(header.leadingAnchor.constraint(equalTo: view.leadingAnchor))
        constraints.append(header.trailingAnchor.constraint(equalTo: view.trailingAnchor))
        constraints.append(header.heightAnchor.constraint(equalToConstant: 100))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    private func setupProfilePhoto() {
        addProfilePhotoConstraints()
        self.profilePhoto.backgroundColor = Colors.lightPurple
        self.profilePhoto.layer.cornerRadius = 75
        
        self.profilePhoto.image = UIImage(systemName: Icons.camera.rawValue)
        self.profilePhoto.tintColor = .white
        self.profilePhoto.contentMode = .scaleAspectFit
    }
    
    func addProfilePhotoConstraints() {
        profilePhoto.translatesAutoresizingMaskIntoConstraints = false
        let profilePhotoSize: CGFloat = 150

        var constraints = [NSLayoutConstraint]()
        
        constraints.append(profilePhoto.topAnchor.constraint(equalTo: header.bottomAnchor, constant: -75))
        constraints.append(profilePhoto.centerXAnchor.constraint(equalTo: header.centerXAnchor))
        constraints.append(profilePhoto.widthAnchor.constraint(equalToConstant: profilePhotoSize))
        constraints.append(profilePhoto.heightAnchor.constraint(equalToConstant: profilePhotoSize))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    private func setupUserNameTextField() {
        addUserNameTextFieldConstraints()
        self.userNameTextField.setup(icon: Icons.person, placeholder: "Full Name")
    }
    
    func addUserNameTextFieldConstraints() {
        userNameTextField.translatesAutoresizingMaskIntoConstraints = false
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(userNameTextField.topAnchor.constraint(equalTo: profilePhoto.bottomAnchor, constant: 44))
        constraints.append(userNameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16))
        constraints.append(userNameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16))
        constraints.append(self.userNameTextField.heightAnchor.constraint(equalToConstant: 52))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    private func setupEmailTextField() {
        addEmailTextFieldConstraints()
        self.emailTextField.setup(icon: Icons.envelope, placeholder: "Email")
    }
    
    func addEmailTextFieldConstraints() {
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(emailTextField.topAnchor.constraint(equalTo: userNameTextField.bottomAnchor, constant: 16))
        constraints.append(emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16))
        constraints.append(emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16))
        constraints.append(emailTextField.heightAnchor.constraint(equalToConstant: 52))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    private func setupPhoneNumber() {
        addPhoneNumberConstraints()
        self.phoneNumberTextField.setup(icon: Icons.phone, placeholder: "Phone Number")
    }
    
    func addPhoneNumberConstraints() {
        phoneNumberTextField.translatesAutoresizingMaskIntoConstraints = false
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(phoneNumberTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 16))
        constraints.append(phoneNumberTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16))
        constraints.append(phoneNumberTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16))
        constraints.append(phoneNumberTextField.heightAnchor.constraint(equalToConstant: 52))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    private func setupBirthday() {
        addBirthdayConstraints()
        self.birthdayTextField.setup(icon: Icons.calendar, placeholder: "Birthday")
    }
    
    func addBirthdayConstraints() {
        birthdayTextField.translatesAutoresizingMaskIntoConstraints = false
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(birthdayTextField.topAnchor.constraint(equalTo: phoneNumberTextField.bottomAnchor, constant: 16))
        constraints.append(birthdayTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16))
        constraints.append(birthdayTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16))
        constraints.append(birthdayTextField.heightAnchor.constraint(equalToConstant: 52))
        
        NSLayoutConstraint.activate(constraints)
    }

    private func setupAddressTextField() {
        addAddressTextFieldConstraints()
        self.addressTextField.setup(icon: Icons.house, placeholder: "Address")
    }
    
    func addAddressTextFieldConstraints() {
        addressTextField.translatesAutoresizingMaskIntoConstraints = false
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(addressTextField.topAnchor.constraint(equalTo: birthdayTextField.bottomAnchor, constant: 16))
        constraints.append(addressTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16))
        constraints.append(addressTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16))
        constraints.append(addressTextField.heightAnchor.constraint(equalToConstant: 52))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    private func setupCheckbox() {
        addCheckboxConstraints()
        
        self.checkbox.layer.cornerRadius = 10
        self.checkbox.backgroundColor = .white
        self.checkbox.layer.shadowOffset = CGSize(width: 0, height: 3.0)
        self.checkbox.layer.shadowOpacity = 0.3
        self.checkbox.layer.shadowRadius = 4.0
        self.checkbox.layer.shadowColor = UIColor.black.cgColor
        
    }
    
    func addCheckboxConstraints() {
        let size: CGFloat = 30
        
        checkbox.translatesAutoresizingMaskIntoConstraints = false
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(checkbox.topAnchor.constraint(equalTo: addressTextField.bottomAnchor, constant: 16))
        constraints.append(checkbox.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16))
        constraints.append(checkbox.widthAnchor.constraint(equalToConstant: size))
        constraints.append(checkbox.heightAnchor.constraint(equalToConstant: size))
        
        NSLayoutConstraint.activate(constraints)
        
    }
    
    private func setupTermsAndConditionsLabel() {
        addTermsAndConditionsLabelConstraints()
        
        self.termsConditionsLabel.setTitle("I agree with terms and conditions", for: .normal)
        self.termsConditionsLabel.setTitleColor(Colors.mainPurple, for: .normal)
        self.termsConditionsLabel.contentHorizontalAlignment = .left
        
        self.termsConditionsLabel.addTarget(self, action: #selector(termsTapped), for: .touchUpInside)
    }
    
    @objc private func termsTapped() {
        let vc = TermsConditionsViewController()
        present(vc, animated: true)
    }
    
    func addTermsAndConditionsLabelConstraints() {
        termsConditionsLabel.translatesAutoresizingMaskIntoConstraints = false
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(termsConditionsLabel.centerYAnchor.constraint(equalTo: checkbox.centerYAnchor))
        constraints.append(termsConditionsLabel.leadingAnchor.constraint(equalTo: checkbox.trailingAnchor, constant: 16))
        constraints.append(termsConditionsLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    private func setupSignupButton() {
        addSignupButtonConstraints()
        
        self.signupButton.backgroundColor = Colors.mainPurple
        self.signupButton.setTitle("Sign Up", for: .normal)
        self.signupButton.tintColor = .white
        
        self.signupButton.layer.cornerRadius = 10
    }
    
    func addSignupButtonConstraints() {
        signupButton.translatesAutoresizingMaskIntoConstraints = false
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(signupButton.topAnchor.constraint(equalTo: checkbox.bottomAnchor, constant: 16))
        constraints.append(signupButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16))
        constraints.append(signupButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16))
        constraints.append(signupButton.heightAnchor.constraint(equalToConstant: 52))
        
        NSLayoutConstraint.activate(constraints)
    }

}
