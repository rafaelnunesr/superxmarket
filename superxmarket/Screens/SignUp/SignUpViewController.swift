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
    let userNameTextField: UITextField = UITextField()
    let emailTextField: UITextField = UITextField()
    let phoneNumberTextField: UITextField = UITextField()
    let birthdayTextField: UITextField = UITextField()
    let addressTextField: UITextField = UITextField()
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
    
    private func addProfilePhotoConstraints() {
        profilePhoto.translatesAutoresizingMaskIntoConstraints = false
        let profilePhotoSize: CGFloat = 150

        var constraints = [NSLayoutConstraint]()
        
        constraints.append(profilePhoto.topAnchor.constraint(equalTo: header.bottomAnchor, constant: -75))
        constraints.append(profilePhoto.centerXAnchor.constraint(equalTo: header.centerXAnchor))
        constraints.append(profilePhoto.widthAnchor.constraint(equalToConstant: profilePhotoSize))
        constraints.append(profilePhoto.heightAnchor.constraint(equalToConstant: profilePhotoSize))
        
        NSLayoutConstraint.activate(constraints)
    }
    

}
