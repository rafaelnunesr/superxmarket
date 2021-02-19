//
//  TermsCondtionsViewControllerViewCodeViewProtocolExtension.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 2/19/21.
//

import Foundation

extension TermsCondtionsViewControllerView: CodeViewProtocol {
    
    func buildViewHierarchy() {
        self.addSubview(scrollView)
        scrollView.addSubview(termsConditions)
        scrollView.addSubview(dismissButton)
    }
    
    func setupConstraints() {
        setupScrollViewConstraints()
        setupTermsConditionsConstraints()
        setupDismissButtonConstraints()
    }
}
