//
//  Models.swift
//  play3
//
//  Created by Shaun Tucker on 2/18/18.
//  Copyright © 2018 Shaun Tucker. All rights reserved.
//

import UIKit

class AppCategory: NSObject {
    
    var name: String?
    var apps: [App]?

    static func sampleAppCategories() -> [AppCategory] {
        
        let bestNewAppsCategory = AppCategory()
        bestNewAppsCategory.name = "Best New Apps"
        
        var apps = [App]()
        
        //logic
        let frozenApp = App()
        frozenApp.name = "Aria Casino: Smoke-free"
        frozenApp.imageName = "3aria2"
        frozenApp.category = "Strip Casino"
        frozenApp.price = NSNumber(value: 199.98)
        apps.append(frozenApp)
        
        let bestNewGamesCategory = AppCategory()
        bestNewGamesCategory.name = "Restaurants"
        
        var bestNewGamesApps = [App]()
        
        let telepaintApp = App()
        telepaintApp.name = "Paint"
        telepaintApp.category = "Games"
        telepaintApp.price = NSNumber(value: 20.99)
        
        bestNewGamesApps.append(telepaintApp)
        
        bestNewGamesCategory.apps = bestNewGamesApps
        
        
        bestNewAppsCategory.apps = apps
        return [bestNewAppsCategory, bestNewGamesCategory]
    }

}

class App: NSObject {
    
    var id: NSNumber?
    var name: String?
    var category: String?
    var imageName: String?
    var price: NSNumber?
    
}
