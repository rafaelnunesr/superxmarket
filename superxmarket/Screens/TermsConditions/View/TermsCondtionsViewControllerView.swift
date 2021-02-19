//
//  TermsCondtionsViewControllerView.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 2/18/21.
//

import UIKit

class TermsCondtionsViewControllerView: UIView {
    
    let scrollView: UIScrollView = UIScrollView()
    let termsConditions: UILabel = UILabel()
    let dismissButton: UIButton = UIButton()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        self.buildViewHierarchy()
        self.setupConstraints()
        self.setupComponents()
    }
    
    private func setupComponents() {
        self.setupScrollView()
        self.setupDismissButton()
    }
    
    private func setupScrollView() {
        setupScrollViewConstraints()
        self.scrollView.backgroundColor = Colors.backgroundGray
        self.scrollView.alwaysBounceVertical = true
        self.scrollView.contentSize.width = 0
    }
    
    private func setupDismissButton() {
        setupDismissButtonConstraints()
        self.termsConditions.textColor = .darkGray
        self.termsConditions.font = UIFont.robotoMedium(size: 14)
        self.termsConditions.lineBreakMode = .byWordWrapping
        self.termsConditions.numberOfLines = 0
        self.dismissButton.layer.cornerRadius = 10
        self.dismissButton.backgroundColor = Colors.mainPurple
    }
    
}
