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
        
        //self.tabBarController?.tabBar.barTintColor = .white
        self.tabBarController?.tabBar.isTranslucent = false
        self.navigationController?.navigationBar.isHidden = true
        
        //self.tabBarController?.tabBar.selectedItem?.badgeColor = Colors.lighterPurple
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
}
