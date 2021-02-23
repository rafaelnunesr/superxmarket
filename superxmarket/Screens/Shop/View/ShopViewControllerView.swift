//
//  ShopViewControllerView.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 2/19/21.
//

import UIKit

class ShopViewControllerView: UIView {
    
    let topHeader: UIView = UIView()
    let welcomeUser: UILabel = UILabel()
    let totalAmount: UILabel = UILabel()
    let currency: UILabel = UILabel()
    let totalValue: UILabel = UILabel()
    let searchField: UITextField = UITextField()
    let cameraIcon: UIButton = UIButton()
    let searchIcon: UIButton = UIButton()
    let productsTableView: UITableView = UITableView()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        self.backgroundColor = Colors.backgroundGray
        buildViewHierarchy()
        setupConstraints()
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        self.setupHeader()
        self.setupWelcomeUser()
        self.setupTotalAmount()
        self.setupCurrency()
        self.setupTotalValue()
        self.setupSearchField()
    }
    
    private func setupHeader() {
        self.topHeader.backgroundColor = Colors.mainPurple
    }
    
    private func setupWelcomeUser() {
        self.welcomeUser.text = "Welcome, Rafael Nunes"
        self.welcomeUser.textColor = .white
    }
    
    private func setupTotalAmount() {
        self.totalAmount.text = "Total Amount"
        self.totalAmount.textColor = .white
    }
    
    private func setupCurrency() {
        self.currency.text = "US$"
        self.currency.textColor = .white
    }
    
    private func setupTotalValue() {
        self.totalValue.text = "1,678.98"
        self.totalValue.textColor = .white
        self.totalValue.textAlignment = .right
    }
    
    private func setupSearchField() {
        
        self.searchField.font = UIFontMetrics.default.scaledFont(for: UIFont.robotoBold(size: 18))
        self.searchField.autocorrectionType = .no
        self.searchField.adjustsFontForContentSizeCategory = true
        self.searchField.placeholder = "Type a product name"
        self.searchField.layer.cornerRadius = 16
        let paddingView = self.searchField.setPadding(amount: 10)
        self.searchField.leftView = paddingView
        self.searchField.leftViewMode = UITextField.ViewMode.always
        
        //self.searchField.setup(icon: Icons.camera, placeholder: "Type a product name")
        
        self.cameraIcon.backgroundImage(for: .normal)
        
        let btnImage = UIImage(systemName: Icons.camera.rawValue)
        self.cameraIcon.setImage(btnImage , for: .normal)
        
        self.cameraIcon.translatesAutoresizingMaskIntoConstraints = false
        self.cameraIcon.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        self.cameraIcon.widthAnchor.constraint(equalToConstant: 30).isActive = true
        self.cameraIcon.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10).isActive = true
        
        //self.setPlaceholderWithColor(placeholder: textFieldPlaceholder!, color: self.color)
    }
    

}

extension ShopViewControllerView: CodeViewProtocol {
    func buildViewHierarchy() {
        self.addSubview(topHeader)
        self.addSubview(welcomeUser)
        self.addSubview(totalAmount)
        self.addSubview(currency)
        self.addSubview(totalValue)
        self.addSubview(searchField)
        self.addSubview(cameraIcon)
        self.addSubview(searchIcon)
        self.addSubview(productsTableView)
    }
    
    func setupConstraints() {
        setupTopHeaderConstraints()
        setupWelcomeUserConstraints()
        setupTotalAmountConstraints()
        setupCurrencyConstraints()
        setupTotalValueConstraints()
        setupSearchFieldConstraints()
        setupCameraIconConstraints()
        setupSearchIconConstraints()
        setupProductsTableViewConstraints()
    }
}

extension ShopViewControllerView {
    
    private func setupTopHeaderConstraints() {
        topHeader.translatesAutoresizingMaskIntoConstraints = false
        topHeader.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        topHeader.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        topHeader.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        topHeader.heightAnchor.constraint(equalToConstant: 170).isActive = true
    }
    
    private func setupWelcomeUserConstraints() {
        welcomeUser.translatesAutoresizingMaskIntoConstraints = false
        welcomeUser.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 5).isActive = true
        welcomeUser.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        welcomeUser.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 16).isActive = true
        welcomeUser.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    private func setupTotalAmountConstraints() {
        totalAmount.translatesAutoresizingMaskIntoConstraints = false
        totalAmount.topAnchor.constraint(equalTo: welcomeUser.bottomAnchor, constant: 30).isActive = true
        totalAmount.leadingAnchor.constraint(equalTo: welcomeUser.leadingAnchor).isActive = true
        totalAmount.widthAnchor.constraint(equalToConstant: 200).isActive = true
        totalAmount.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    private func setupCurrencyConstraints() {
        currency.translatesAutoresizingMaskIntoConstraints = false
        currency.centerYAnchor.constraint(equalTo: totalAmount.centerYAnchor).isActive = true
        currency.leadingAnchor.constraint(equalTo: totalAmount.trailingAnchor, constant: 10).isActive = true
        currency.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    private func setupTotalValueConstraints() {
        totalValue.translatesAutoresizingMaskIntoConstraints = false
        totalValue.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 45).isActive = true
        totalValue.widthAnchor.constraint(equalToConstant: 140).isActive = true
        totalValue.heightAnchor.constraint(equalToConstant: 70).isActive = true
        totalValue.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
    }
    
    private func setupSearchFieldConstraints() {
        searchField.translatesAutoresizingMaskIntoConstraints = false
        searchField.centerYAnchor.constraint(equalTo: topHeader.bottomAnchor, constant: -26).isActive = true
        searchField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 26).isActive = true
        searchField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -26).isActive = true
        searchField.heightAnchor.constraint(equalToConstant: 52).isActive = true
    }
    
    private func setupCameraIconConstraints() {}
    
    private func setupSearchIconConstraints() {}
    
    private func setupProductsTableViewConstraints() {}
}
