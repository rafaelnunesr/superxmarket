//
//  CodeViewProtocol.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 2/16/21.
//

import Foundation

protocol CodeViewProtocol {
    func buildViewHierarchy()
    func setupConstraints()
    func setupView()
}

extension CodeViewProtocol {
    func setupView() {
        buildViewHierarchy()
        setupConstraints()
    }
}
