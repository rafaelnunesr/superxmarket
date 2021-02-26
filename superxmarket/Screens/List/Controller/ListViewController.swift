//
//  ListViewController.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 2/24/21.
//

import UIKit

class ListViewController: UIViewController {
    
    let header: Header = Header()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .gray
        self.navigationController?.navigationBar.isHidden = true
        
        setupHeader()
    }
    
    private func setupHeader() {
        self.view.addSubview(header)
        
        self.header.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        self.header.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.header.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
    }

}
