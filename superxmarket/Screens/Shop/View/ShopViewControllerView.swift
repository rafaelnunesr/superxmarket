//
//  ShopViewControllerView.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 2/19/21.
//

import UIKit

class ShopViewControllerView: UIView {
    
    let header: Header = Header()
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
        self.setupWelcomeUser()
        self.setupTotalAmount()
        self.setupCurrency()
        self.setupTotalValue()
        self.setupSearchField()
        self.setupCameraIcon()
        self.setupSearchIcon()
        self.setupProductsTableView()
    }
    
    private func setupWelcomeUser() {
        self.welcomeUser.text = "Welcome, Rafael Nunes"
        self.welcomeUser.font = UIFont.robotoMedium(size: 17)
        self.welcomeUser.textColor = .white
    }
    
    private func setupTotalAmount() {
        self.totalAmount.text = "Total Amount:"
        self.totalAmount.font = UIFont.robotoMedium(size: 17)
        self.totalAmount.textColor = .white
    }
    
    private func setupCurrency() {
        self.currency.text = "US$"
        self.totalAmount.font = UIFont.robotoMedium(size: 17)
        self.currency.textColor = .white
    }
    
    private func setupTotalValue() {
        self.totalValue.text = "1,678.98"
        self.totalValue.textColor = .white
        self.totalValue.font = UIFont.robotoBold(size: 30)
        self.totalValue.textAlignment = .right
    }
    
    private func setupSearchField() {
        
        self.searchField.backgroundColor = .white
        self.searchField.font = UIFontMetrics.default.scaledFont(for: UIFont.robotoBold(size: 18))
        self.searchField.autocorrectionType = .no
        self.searchField.adjustsFontForContentSizeCategory = true
        self.searchField.layer.cornerRadius = 10
        let paddingView = self.searchField.setPadding(amount: 40)
        self.searchField.leftView = paddingView
        self.searchField.leftViewMode = UITextField.ViewMode.always
        
        self.searchField.attributedPlaceholder = NSAttributedString(string: "Type a product name", attributes: [
            .foregroundColor: UIColor.gray,
            .font: UIFont.robotoMedium(size: 17)
        ])
        
        self.searchField.addShadowEffect()
        
    }
    
    private func setupCameraIcon() {
        
        self.cameraIcon.backgroundImage(for: .normal)
        
        let btnImage = UIImage(systemName: Icons.camera.rawValue)
        self.cameraIcon.setImage(btnImage , for: .normal)
        self.cameraIcon.tintColor = Colors.mainPurple
        
        self.cameraIcon.addTarget(self, action: #selector(cameraTapped), for: .touchUpInside)
    }
    
    @objc private func cameraTapped() {
        print("camera tapped")
    }
    
    private func setupSearchIcon() {
        self.searchIcon.backgroundImage(for: .normal)
        
        let btnImage = UIImage(systemName: Icons.magnifyingglass.rawValue)
        self.searchIcon.setImage(btnImage , for: .normal)
        self.searchIcon.tintColor = Colors.mainPurple
        
        self.searchIcon.addTarget(self, action: #selector(searchTapped), for: .touchUpInside)
    }
    
    @objc private func searchTapped() {
        print("search tapped")
    }
    
    private func setupProductsTableView() {
        self.productsTableView.register(ProductTableViewCell.nib(), forCellReuseIdentifier: ProductTableViewCell.identifier)
        
        self.productsTableView.delegate = self
        
        self.productsTableView.backgroundColor = .gray
    }
        
}


extension ShopViewControllerView: UITableViewDelegate {
}


extension ShopViewControllerView: CodeViewProtocol {
    func buildViewHierarchy() {
        self.addSubview(header)
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
        header.translatesAutoresizingMaskIntoConstraints = false
        header.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        header.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        header.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
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
        totalAmount.widthAnchor.constraint(equalToConstant: 150).isActive = true
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
        totalValue.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 40).isActive = true
        totalValue.widthAnchor.constraint(equalToConstant: 140).isActive = true
        totalValue.heightAnchor.constraint(equalToConstant: 70).isActive = true
        totalValue.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
    }
    
    private func setupSearchFieldConstraints() {
        searchField.translatesAutoresizingMaskIntoConstraints = false
        searchField.centerYAnchor.constraint(equalTo: header.bottomAnchor).isActive = true
        searchField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 26).isActive = true
        searchField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -26).isActive = true
        searchField.heightAnchor.constraint(equalToConstant: 52).isActive = true
    }
    
    private func setupCameraIconConstraints() {
        
        self.cameraIcon.translatesAutoresizingMaskIntoConstraints = false
        self.cameraIcon.centerYAnchor.constraint(equalTo: searchField.centerYAnchor).isActive = true
        self.cameraIcon.widthAnchor.constraint(equalToConstant: 40).isActive = true
        self.cameraIcon.leadingAnchor.constraint(equalTo: searchField.leadingAnchor, constant: 4).isActive = true
    }
    
    private func setupSearchIconConstraints() {
        
        self.searchIcon.translatesAutoresizingMaskIntoConstraints = false
        self.searchIcon.centerYAnchor.constraint(equalTo: searchField.centerYAnchor).isActive = true
        self.searchIcon.widthAnchor.constraint(equalToConstant: 40).isActive = true
        self.searchIcon.trailingAnchor.constraint(equalTo: searchField.trailingAnchor, constant: -4).isActive = true
    }
    
    private func setupProductsTableViewConstraints() {
        productsTableView.translatesAutoresizingMaskIntoConstraints = false
        productsTableView.topAnchor.constraint(equalTo: header.bottomAnchor, constant: 40).isActive = true
        productsTableView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16).isActive = true
        productsTableView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        productsTableView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -30).isActive = true
    }
}
