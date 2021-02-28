//
//  LoginViewControllerView.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 2/16/21.
//

import UIKit

final class LoginViewControllerView: UIView {
    
    // MARK: Components
    var superxLogo: UIImageView = UIImageView()
    var emailTextField: LoginTextField = LoginTextField()
    var passwordTextField: LoginTextField = LoginTextField()
    var continueButton: CustomButton = CustomButton()
    var recoverPasswordButton: CustomButton = CustomButton()
    var signupButton: CustomButton = CustomButton()
    var lineView: UIView = UIView()
    var googleButton: CustomSignInButton = CustomSignInButton()
    var facebookButton: CustomSignInButton = CustomSignInButton()
    var copyrightLabel: UILabel = UILabel()
    
    // MARK: Variables
    let viewPadding: CGFloat = 20
 
    // MARK: Init
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        self.buildViewHierarchy()
        self.setupConstraints()
        self.setupGradientBackgroundColor()
    }
    
    // MARK:
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupGradientBackgroundColor() {
        
        let gradientBackground: [UIColor] = [Colors.lighterPurple, Colors.lightPurple, Colors.mainPurple, Colors.mainPurple, Colors.mainPurple]
        let location: [NSNumber] = [0, 0.25]
        let starPoint: CGPoint = CGPoint(x: 0.1, y: 1)
        let endPoint: CGPoint = CGPoint(x: 0.1, y: 0.1)
        
        self.applyGradient(colors: gradientBackground, locations: location, startPoint: starPoint, endPoint: endPoint, indexLayer: 0)
    
        self.backgroundColor = Colors.mainPurple
        
    }
        
}
