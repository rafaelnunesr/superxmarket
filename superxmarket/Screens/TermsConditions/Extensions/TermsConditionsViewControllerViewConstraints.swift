//
//  TermsConditionsViewControllerViewConstraints.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 2/19/21.
//

import Foundation

extension TermsCondtionsViewControllerView {
    
    func setupScrollViewConstraints() {
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
    }
    
    func setupTermsConditionsConstraints() {
        termsConditions.translatesAutoresizingMaskIntoConstraints = false
        termsConditions.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 16).isActive = true
        termsConditions.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 16).isActive = true
        termsConditions.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -16).isActive = true
        termsConditions.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -70).isActive = true
    }
    
    func setupDismissButtonConstraints() {
        self.dismissButton.translatesAutoresizingMaskIntoConstraints = false
        dismissButton.topAnchor.constraint(equalTo: termsConditions.bottomAnchor, constant: 20).isActive = true
        dismissButton.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20).isActive = true
        dismissButton.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20).isActive = true
        dismissButton.heightAnchor.constraint(equalToConstant: 52).isActive = true
    }
}
