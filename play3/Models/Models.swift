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
        
        let casinoCategory = AppCategory()
        casinoCategory.name = "Casino's on the Strip"  //1st category
        
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
        
        casinoCategory.apps = apps
        
        //2nd Category
        let restaurantCategory = AppCategory()
        restaurantCategory.name = "Restaurants"  //2nd category
        
        var bestRest = [App]()
        
        let ariaC = App()
        ariaC.name = "Aria Cafe"
        ariaC.category = "Cafe"
        ariaC.imageName = "A1AriaC"
        bestRest.append(ariaC)
        
        let buffet = App()
        buffet.name = "Aria Buffet"
        buffet.category = "Buffet"
        buffet.imageName = "A1buffet"
        bestRest.append(buffet)
        
        let javier = App()
        javier.name = "Javier"
        javier.category = "Cuisine"
        javier.imageName = "A1javier"
        bestRest.append(javier)
        
        let jean = App()
        jean.name = "Jean George"
        jean.category = "Cuisine"
        jean.imageName = "A1JeanG"
        bestRest.append(jean)
        
        restaurantCategory.apps = bestRest
        
        let transportationCategory = AppCategory()
        transportationCategory.name = "Transportation"  //3rd category
        
        var transportation = [App]()
        let taxi = App()
        taxi.name = "Ride or Die"
        taxi.category = "taxi"
        taxi.imageName = "5taxi"
        transportation.append(taxi)
        
        transportationCategory.apps = transportation
        
        
        return [casinoCategory, restaurantCategory, transportationCategory]
        
        
    }

}

class App: NSObject {
    
    var id: NSNumber?
    var name: String?
    var category: String?
    var imageName: String?
    var price: NSNumber?
    
}
