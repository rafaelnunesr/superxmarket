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
    let userNameTextField: CustomTextField = CustomTextField()
    let emailTextField: CustomTextField = CustomTextField()
    let phoneNumberTextField: CustomTextField = CustomTextField()
    let birthdayTextField: CustomTextField = CustomTextField()
    let addressTextField: CustomTextField = CustomTextField()
    let checkbox: UIButton = UIButton()
    let termsConditionsLabel: UILabel = UILabel()
    let signupButton: UIButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
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
        constraints.append(header.heightAnchor.constraint(equalToConstant: 185))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    private func setupProfilePhoto() {
        addProfilePhotoConstraints()
        self.profilePhoto.backgroundColor = Colors.lightPurple
        self.profilePhoto.layer.cornerRadius = 75
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
        self.userNameTextField.setup(iconName: "person", placeholder: "Full Name")
    }
    
    func addUserNameTextFieldConstraints() {
        userNameTextField.translatesAutoresizingMaskIntoConstraints = false
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(userNameTextField.topAnchor.constraint(equalTo: profilePhoto.bottomAnchor, constant: 44))
        constraints.append(userNameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16))
        constraints.append(userNameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    private func setupEmailTextField() {
        addEmailTextFieldConstraints()
        self.emailTextField.setup(iconName: "mail", placeholder: "Email Address")
    }
    
    func addEmailTextFieldConstraints() {
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(emailTextField.topAnchor.constraint(equalTo: userNameTextField.bottomAnchor, constant: 16))
        constraints.append(emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16))
        constraints.append(emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    private func setupPhoneNumber() {
        addPhoneNumberConstraints()
        self.phoneNumberTextField.setup(iconName: "phone", placeholder: "Phone Number")
    }
    
    func addPhoneNumberConstraints() {
        phoneNumberTextField.translatesAutoresizingMaskIntoConstraints = false
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(phoneNumberTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 16))
        constraints.append(phoneNumberTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16))
        constraints.append(phoneNumberTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16))
        
        NSLayoutConstraint.activate(constraints)
    }
    
    private func setupBirthday() {
        addBirthdayConstraints()
        self.birthdayTextField.setup(iconName: "calendar", placeholder: "Birthday")
    }
    
    func addBirthdayConstraints() {
        birthdayTextField.translatesAutoresizingMaskIntoConstraints = false
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(birthdayTextField.topAnchor.constraint(equalTo: phoneNumberTextField.bottomAnchor, constant: 16))
        constraints.append(birthdayTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16))
        constraints.append(birthdayTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16))
        
        NSLayoutConstraint.activate(constraints)
    }

    private func setupAddressTextField() {
        addAddressTextFieldConstraints()
        self.addressTextField.setup(iconName: "home", placeholder: "Address")
    }
    
    func addAddressTextFieldConstraints() {
        addressTextField.translatesAutoresizingMaskIntoConstraints = false
        
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(addressTextField.topAnchor.constraint(equalTo: birthdayTextField.bottomAnchor, constant: 16))
        constraints.append(addressTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16))
        constraints.append(addressTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16))
        
        NSLayoutConstraint.activate(constraints)
    }

}
