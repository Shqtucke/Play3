//
//  CustomTabBarController.swift
//  play3
//
//  Created by Shaun Tucker on 2/26/18.
//  Copyright © 2018 Shaun Tucker. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //setup custom view controllers
        let layout = UICollectionViewFlowLayout()
        let friendsController = FeaturedAppController(collectionViewLayout: layout)
        let recentNav = UINavigationController(rootViewController: friendsController)
        recentNav.tabBarItem.title = "Banks"
        recentNav.tabBarItem.image = UIImage(named: "7money1")
        
        
        viewControllers = [recentNav]
    }
}
