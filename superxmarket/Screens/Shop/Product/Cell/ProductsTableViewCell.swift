//
//  ProductsTableViewCell.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 2/27/21.
//

import UIKit

class ProductsTableViewCell: UITableViewCell {
    
    static let identifier: String = "ProductsTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: ProductsTableViewCell.identifier, bundle: nil)
    }
    
    private let bgView: UIView = UIView()

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setup() {
        setupBgView()
    }
    
    private func setupBgView() {
        self.addSubview(bgView)
        setupBgViewConstraints()
        self.bgView.backgroundColor = .red
    }
    
    func setupBgViewConstraints() {
        
        guard let _superview = superview else { return }
        
        let margins = _superview.layoutMarginsGuide
        
        //bgView.frame = _superview.bounds
        
        bgView.topAnchor.constraint(equalTo: margins.topAnchor, constant: 10).isActive = true
        bgView.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 4).isActive = true
        bgView.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: -4).isActive = true
        bgView.bottomAnchor.constraint(equalTo: margins.bottomAnchor, constant: -10).isActive = true
    }

}

