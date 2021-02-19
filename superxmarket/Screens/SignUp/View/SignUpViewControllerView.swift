//
//  SignUpViewControllerView.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 2/18/21.
//

import UIKit

class SignUpViewControllerView: UIView {
    
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
    
    // MARK: Init
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        self.setup()
    }
    
    // MARK:
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        setupView()
        buildViewHierarchy()
        setupConstraints()
        self.setupComponents()
    }
    
    internal func setupView() {
        self.backgroundColor = UIColor(red: 0.97, green: 0.97, blue: 0.97, alpha: 1)
    }
    
    private func setupComponents() {
        self.setupHeader()
        self.setupProfilePhoto()
        self.setupUserNameTextField()
        self.setupEmailTextField()
        self.setupPhoneNumberTextField()
        self.setupBirthdayTextField()
        self.setupAddressTextField()
        self.setupCheckbox()
        self.setupTermsConditionsLabel()
        self.setupSignupButton()
    }
    
    private func setupHeader() {
        setupHeaderConstraints()
        self.header.backgroundColor = Colors.mainPurple
    }
    
    private func setupProfilePhoto() {
        setupProfilePhotoConstraints()
        self.profilePhoto.backgroundColor = Colors.lightPurple
        self.profilePhoto.layer.cornerRadius = 75
        self.profilePhoto.image = UIImage(systemName: Icons.camera.rawValue)
        self.profilePhoto.tintColor = .white
        self.profilePhoto.contentMode = .scaleAspectFit
    }
    
    private func setupUserNameTextField() {
        setupUserNameTextFieldCostraints()
    }
    
    private func setupEmailTextField() {
        setupEmailTextFieldConstraints()
    }
    
    private func setupPhoneNumberTextField() {
        setupPhoneNumberTextFieldConstraints()
    }
    
    private func setupBirthdayTextField() {
        setupBirthdayTextFieldConstraints()
    }
    
    private func setupAddressTextField() {
        setupAddressTextFieldConstraints()
    }
    
    private func setupCheckbox() {
        setupCheckboxConstraints()
        self.checkbox.layer.cornerRadius = 10
        self.checkbox.backgroundColor = .white
        self.checkbox.layer.shadowOffset = CGSize(width: 0, height: 3.0)
        self.checkbox.layer.shadowOpacity = 0.3
        self.checkbox.layer.shadowRadius = 4.0
        self.checkbox.layer.shadowColor = UIColor.black.cgColor
        
    }
    
    private func setupTermsConditionsLabel() {
        setupTermsConditionsLabelConstraints()
        self.termsConditionsLabel.setTitleColor(Colors.mainPurple, for: .normal)
        self.termsConditionsLabel.contentHorizontalAlignment = .left
    }
    
    private func setupSignupButton() {
        self.signupButton.backgroundColor = Colors.mainPurple
        self.signupButton.tintColor = .white
        self.signupButton.layer.cornerRadius = 10
    }

}
