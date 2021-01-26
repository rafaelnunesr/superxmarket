//
//  LoginViewControllerUITextFieldDelegate.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 1/26/21.
//

import Foundation
import EmailValidator

extension LoginViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.addTextFieldBorder(textField: textField, borderColor: nil)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField.text == nil || textField.isEmpty() {
            self.addTextFieldBorder(textField: textField, borderColor: Colors.mainRed)
        }else {
            self.removeTextFieldBoder(textField: textField)
            if !checkIfEmailIsValid() {
                self.addTextFieldBorder(textField: textField, borderColor: Colors.mainRed)
            }
        }
    }
    
    private func addTextFieldBorder(textField: UITextField, borderColor: UIColor?) {
        textField.layer.borderWidth = 1
        textField.layer.borderColor = borderColor?.cgColor ?? Colors.darkerPurple.cgColor
    }
    
    private func removeTextFieldBoder(textField: UITextField) {
        textField.layer.borderWidth = 0
        textField.layer.borderColor = .none
    }
    
    private func checkIfEmailIsValid() -> Bool {
        //return EmailValidator.validate(email: emailTextField.text ?? "")
        return false
    }
}
