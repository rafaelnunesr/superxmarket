//
//  ShopViewController.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 2/19/21.
//

import UIKit

class ShopViewController: UIViewController {

    let shopView = ShopViewControllerView()
    var products = ["one", "two", "three"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = shopView
        
        //self.tabBarController?.tabBar.barTintColor = .white
        self.tabBarController?.tabBar.isTranslucent = false
        self.navigationController?.navigationBar.isHidden = true
        
        //self.tabBarController?.tabBar.selectedItem?.badgeColor = Colors.lighterPurple
        
        self.shopView.productsTableView.register(ProductsTableViewCell.nib(), forCellReuseIdentifier: ProductsTableViewCell.identifier)
        
        self.shopView.productsTableView.delegate = self
        self.shopView.productsTableView.dataSource = self
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
}

extension ShopViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }
}

extension ShopViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: ProductsTableViewCell = tableView.dequeueReusableCell(withIdentifier: ProductsTableViewCell.identifier, for: indexPath) as! ProductsTableViewCell
        
        cell.setup()
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170
    }
}
