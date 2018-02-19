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
        bestNewAppsCategory.name = "Casino's on the Strip"
        
        var apps = [App]()
        
        //logic
        let aria = App()
        aria.name = "Aria Casino: Smoke-free"
        aria.imageName = "3aria2"
        aria.category = "Strip Casino"
        //aria.price = NSNumber(value: 199.98)
        apps.append(aria)
        
        let ballys = App()
        ballys.name = "Ballys"
        ballys.imageName = "3ballys1"
        ballys.category = "strip"
        apps.append(ballys)
        
        let bellagio = App()
        bellagio.name = "Bellagio"
        bellagio.imageName = "3bellagio"
        bellagio.category = "Strip Casino"
        apps.append(bellagio)
        
        let caesars = App()
        caesars.name = "Caesars"
        caesars.imageName = "3caesars"
        caesars.category = "ceasar rules"
        apps.append(caesars)
        
        let bestNewGamesCategory = AppCategory()
        bestNewGamesCategory.name = "Restaurants"
        
        var bestNewGamesApps = [App]()
        
        let telepaintApp = App()
        telepaintApp.name = "Aria Cafe"
        telepaintApp.category = "Cafe"
        telepaintApp.imageName = "A1AriaC"
        bestNewGamesApps.append(telepaintApp)
        
        let buffet = App()
        buffet.name = "Aria Buffet"
        buffet.category = "Buffet"
        buffet.imageName = "A1buffet"
        bestNewGamesApps.append(buffet)
        
        let javier = App()
        javier.name = "Javier"
        javier.category = "Cuisine"
        javier.imageName = "A1javier"
        bestNewGamesApps.append(javier)
        
        let jean = App()
        jean.name = "Jean George"
        jean.category = "Cuisine"
        jean.imageName = "A1JeanG"
        bestNewGamesApps.append(jean)
        
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
