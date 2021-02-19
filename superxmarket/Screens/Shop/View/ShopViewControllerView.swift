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
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
    
    private func setupTopHeaderConstraints() {}
    
    private func setupWelcomeUserConstraints() {}
    
    private func setupTotalAmountConstraints() {}
    
    private func setupCurrencyConstraints() {}
    
    private func setupTotalValueConstraints() {}
    
    private func setupSearchFieldConstraints() {}
    
    private func setupCameraIconConstraints() {}
    
    private func setupSearchIconConstraints() {}
    
    private func setupProductsTableViewConstraints() {}
}
