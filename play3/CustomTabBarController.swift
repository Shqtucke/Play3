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
        
        
        viewControllers = [recentNav, createDummyNav(title: "Tours", imageName: "7tours"), createDummyNav(title: "Conceirge", imageName: "7conce1"), createDummyNav(title: "dine", imageName: "7food3"), createDummyNav(title: "Slots", imageName: "7slots")]
    }

    private func createDummyNav(title: String, imageName: String) -> UINavigationController {
        let viewController = UIViewController()
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(named: imageName)
        return navController
        
    }


}






