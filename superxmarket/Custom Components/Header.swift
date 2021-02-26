//
//  Header.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 2/26/21.
//

import UIKit

class Header: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setup() {
        self.setupBackgroundColor()
        self.setupConstraints()
    }
    
    private func setupBackgroundColor() {
        self.backgroundColor = Colors.mainPurple
    }
    
    private func setupConstraints() {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.heightAnchor.constraint(equalToConstant: 180).isActive = true
    }
}
