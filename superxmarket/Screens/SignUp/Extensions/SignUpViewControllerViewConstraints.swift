//
//  SignUpViewControllerViewConstraints.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 2/18/21.
//

import UIKit

extension SignUpViewControllerView {
    
    func setupHeaderConstraints() {
        header.translatesAutoresizingMaskIntoConstraints = false
        header.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        header.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        header.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        
        let screenSize: CGRect = UIScreen.main.bounds
        let screenHeight = screenSize.height * 0.1
        
        self.header.heightAnchor.constraint(equalToConstant: screenHeight).isActive = true
    }
    
    func setupProfilePhotoConstraints() {
        
        let screenSize: CGRect = UIScreen.main.bounds
        let profilePhotoSize: CGFloat = screenSize.height * 0.15
        
        profilePhoto.translatesAutoresizingMaskIntoConstraints = false
        profilePhoto.topAnchor.constraint(equalTo: header.bottomAnchor, constant: -profilePhotoSize / 2).isActive = true
        profilePhoto.centerXAnchor.constraint(equalTo: header.centerXAnchor).isActive = true
        profilePhoto.widthAnchor.constraint(equalToConstant: profilePhotoSize).isActive = true
        profilePhoto.heightAnchor.constraint(equalToConstant: profilePhotoSize).isActive = true
    }
    
    func setupUserNameTextFieldCostraints() {
        userNameTextField.translatesAutoresizingMaskIntoConstraints = false
        userNameTextField.topAnchor.constraint(equalTo: profilePhoto.bottomAnchor, constant: 35).isActive = true
        userNameTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        userNameTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        userNameTextField.heightAnchor.constraint(equalToConstant: 52).isActive = true
    }
    
    func setupEmailTextFieldConstraints() {
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.topAnchor.constraint(equalTo: userNameTextField.bottomAnchor, constant: 16).isActive = true
        emailTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 52).isActive = true
    }
    
    func setupPhoneNumberTextFieldConstraints() {
        phoneNumberTextField.translatesAutoresizingMaskIntoConstraints = false
        phoneNumberTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 16).isActive = true
        phoneNumberTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        phoneNumberTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        phoneNumberTextField.heightAnchor.constraint(equalToConstant: 52).isActive = true
    }
    
    func setupBirthdayTextFieldConstraints() {
        birthdayTextField.translatesAutoresizingMaskIntoConstraints = false
        birthdayTextField.topAnchor.constraint(equalTo: phoneNumberTextField.bottomAnchor, constant: 16).isActive = true
        birthdayTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        birthdayTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        birthdayTextField.heightAnchor.constraint(equalToConstant: 52).isActive = true
    }
    
    func setupAddressTextFieldConstraints() {
        addressTextField.translatesAutoresizingMaskIntoConstraints = false
        addressTextField.topAnchor.constraint(equalTo: birthdayTextField.bottomAnchor, constant: 16).isActive = true
        addressTextField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        addressTextField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        addressTextField.heightAnchor.constraint(equalToConstant: 52).isActive = true
    }
    
    func setupCheckboxConstraints() {
        let size: CGFloat = 30
        checkbox.translatesAutoresizingMaskIntoConstraints = false
        checkbox.topAnchor.constraint(equalTo: addressTextField.bottomAnchor, constant: 16).isActive = true
        checkbox.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        checkbox.widthAnchor.constraint(equalToConstant: size).isActive = true
        checkbox.heightAnchor.constraint(equalToConstant: size).isActive = true
    }
    
    func setupTermsConditionsLabelConstraints() {
        termsConditionsLabel.translatesAutoresizingMaskIntoConstraints = false
        termsConditionsLabel.centerYAnchor.constraint(equalTo: checkbox.centerYAnchor).isActive = true
        termsConditionsLabel.leadingAnchor.constraint(equalTo: checkbox.trailingAnchor, constant: 16).isActive = true
        termsConditionsLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
    }
    
    func setupSignupButtonConstraints() {
        signupButton.translatesAutoresizingMaskIntoConstraints = false
        signupButton.topAnchor.constraint(equalTo: checkbox.bottomAnchor, constant: 16).isActive = true
        signupButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        signupButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        signupButton.heightAnchor.constraint(equalToConstant: 52).isActive = true
    }
}
