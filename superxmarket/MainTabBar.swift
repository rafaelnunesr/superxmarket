//
//  MainTabBar.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 2/24/21.
//

import UIKit

class MainTabBar: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureViewsControllers()
    }
    
    private func configureViewsControllers() {
        
        let shop = templateNavigationController(title: "Shop", image: UIImage(systemName: "cart.fill")!, tag: 0, rootViewController: UIStoryboard(name: "Shop", bundle: nil).instantiateInitialViewController() as! ShopViewController)
        
        let list = templateNavigationController(title: "List", image: UIImage(systemName: "list.bullet")!, tag: 1, rootViewController: UIStoryboard(name: "List", bundle: nil).instantiateInitialViewController() as! ListViewController)
        
        let history = templateNavigationController(title: "History", image: UIImage(systemName: "archivebox.fill")!, tag: 2, rootViewController: UIStoryboard(name: "History", bundle: nil).instantiateInitialViewController() as! HistoryViewController)
        
        let profile = templateNavigationController(title: "Profile", image: UIImage(systemName: "person.fill")!, tag: 3, rootViewController: UIStoryboard(name: "Profile", bundle: nil).instantiateInitialViewController() as! ProfileViewController)
        
        
        self.viewControllers = [shop, list, history, profile]
        self.tabBar.tintColor = Colors.mainPurple
    }
    
    private func templateNavigationController(title: String, image: UIImage, tag: Int, rootViewController: UIViewController) -> UINavigationController {
        
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem = UITabBarItem(title: title, image: image, tag: tag)
        nav.navigationBar.tintColor = .white
        
        return nav
    }
    
}

struct TemplateNavigationController {
    let title: String
    let image: UIImage
    let tag: Int
    let rootViewController: UIViewController
}
