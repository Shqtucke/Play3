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
        
        tabBar.barTintColor = #colorLiteral(red: 0.956762135, green: 0.9569223523, blue: 0.9567396045, alpha: 1)
        
        tabBar.tintColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        
        
        
        //setup custom view controllers
        let layout = UICollectionViewFlowLayout()
        let friendsController = FeaturedAppController(collectionViewLayout: layout)
        let recentNav = UINavigationController(rootViewController: friendsController)
        recentNav.tabBarItem.title = "Home"
        recentNav.tabBarItem.image = UIImage(named: "7home")
        
        let airVC = AirportViewController()
        let airViewController = UINavigationController(rootViewController: airVC)
        airViewController.title = "fly"
        airViewController.tabBarItem.image = UIImage(named:"7tours")
        
        let restVC = RestaurantViewController()
        let restViewController = UINavigationController(rootViewController: restVC)
        restViewController.title = "eat"
        restViewController.tabBarItem.image = UIImage(named: "7conce1")
        
        let hotelVC = HotelViewController()
        let hotelViewController = UINavigationController(rootViewController: hotelVC)
        hotelViewController.title = "stay"
        hotelViewController.tabBarItem.image = UIImage(named: "7slots")
        
        let playVC = PlayViewController()
        let playViewController = UINavigationController(rootViewController: playVC)
        playViewController.title = "play"
        playViewController.tabBarItem.image = UIImage(named: "7transpo")
        
        
        
        viewControllers = [recentNav, airViewController, restViewController, hotelViewController, playViewController]
        
//        viewControllers = [recentNav, createDummyNav(title: "Tours", imageName: "7tours"), createDummyNav(title: "Conceirge", imageName: "7conce1"), createDummyNav(title: "transpo", imageName: "7transpo"), createDummyNav(title: "Slots", imageName: "7slots")]
    }

    private func createDummyNav(title: String, imageName: String) -> UINavigationController {
        let viewController = UIViewController()
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(named: imageName)
        
        
        return navController
        
    }


}






