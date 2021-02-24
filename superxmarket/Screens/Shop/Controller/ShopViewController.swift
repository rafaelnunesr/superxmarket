//
//  ShopViewController.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 2/19/21.
//

import UIKit

class ShopViewController: UIViewController {

    let shopView = ShopViewControllerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = shopView
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
}
