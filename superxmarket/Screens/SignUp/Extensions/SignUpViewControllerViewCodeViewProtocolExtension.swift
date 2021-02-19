//
//  SignUpViewControllerViewCodeViewProtocolExtension.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 2/18/21.
//

import Foundation

extension SignUpViewControllerView: CodeViewProtocol {
    
    func buildViewHierarchy(){
        self.addSubview(header)
        self.addSubview(profilePhoto)
        self.addSubview(userNameTextField)
        self.addSubview(emailTextField)
        self.addSubview(phoneNumberTextField)
        self.addSubview(birthdayTextField)
        self.addSubview(addressTextField)
        self.addSubview(checkbox)
        self.addSubview(termsConditionsLabel)
        self.addSubview(signupButton)
    }
    
    func setupConstraints(){
        setupHeaderConstraints()
        setupProfilePhotoConstraints()
        setupUserNameTextFieldCostraints()
        setupEmailTextFieldConstraints()
        setupProfilePhotoConstraints()
        setupBirthdayTextFieldConstraints()
        setupAddressTextFieldConstraints()
        setupCheckboxConstraints()
        setupTermsConditionsLabelConstraints()
        setupSignupButtonConstraints()
    }
}
