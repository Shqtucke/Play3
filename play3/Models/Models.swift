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
        casinoCategory.name = "On the Strip"  //1st category
        
        var apps = [App]()
        
        //logic
        let aria = App()
        aria.name = "Aria Casino"
        aria.imageName = "3aria2"
        aria.category = "Strip Casino"
        //aria.price = NSNumber(value: 199.98)
        apps.append(aria)
        
        let ballys = App()
        ballys.name = "Ballys"
        ballys.imageName = "3ballys1"
        ballys.category = "Strip Casino"
        apps.append(ballys)
        
        let bellagio = App()
        bellagio.name = "Bellagio"
        bellagio.imageName = "3bellagio"
        bellagio.category = "Strip Casino"
        apps.append(bellagio)
        
        let caesars = App()
        caesars.name = "Caesars"
        caesars.imageName = "3caesars"
        caesars.category = "Strip Casino"
        apps.append(caesars)
        
        let casinoR = App()
        casinoR.name = "Casino Royale"
        casinoR.imageName = "3casinoR"
        casinoR.category = "Strip Casino"
        apps.append(casinoR)
        
        let circus = App()
        circus.name = "Circus Circus"
        circus.imageName = "3circus"
        circus.category = "South Strip"
        apps.append(circus)
        
        let cromwell = App()
        cromwell.name = "The Cromwell"
        cromwell.imageName = "3cromwell"
        cromwell.category = "Strip Casino"
        apps.append(cromwell)
        
        
        casinoCategory.apps = apps
        
        //2nd Category **********RESTAURANTS ********
        let restaurantCategory = AppCategory()
        restaurantCategory.name = "Restaurants"  //2nd category
        
        var bestRest = [App]()
        
        let ariaC = App()
        ariaC.name = "Aria Cafe"
        ariaC.category = "Aria"
        ariaC.imageName = "A1AriaC"
        bestRest.append(ariaC)
        
        let buffet = App()
        buffet.name = "Aria Buffet"
        buffet.category = "Aria"
        buffet.imageName = "A1buffet"
        bestRest.append(buffet)
        
        let javier = App()
        javier.name = "Javier"
        javier.category = "Ballys"
        javier.imageName = "A1javier"
        bestRest.append(javier)
        
        let jean = App()
        jean.name = "Jean George"
        jean.category = "Caesars"
        jean.imageName = "A1JeanG"
        bestRest.append(jean)
        
        restaurantCategory.apps = bestRest
        
        //3rd Category ********TRANSPORTATION************
        let transportationCategory = AppCategory()
        transportationCategory.name = "Transportation"  //3rd category
        
        var transportation = [App]()
        
        let las = App()
        las.name = "Airport"
        las.imageName = "5las"
        las.category = "All Day"
        transportation.append(las)
        
        let taxi = App()
        taxi.name = "Taxi"
        taxi.imageName = "5taxi"
        taxi.price = NSNumber(value: 21)
        taxi.category = "All Day"
        transportation.append(taxi)
        
        let deuce = App()
        deuce.name = "Deuce"
        deuce.imageName = "5deuce"
        deuce.price = NSNumber(value: 10)
        deuce.category = "All Day"
        transportation.append(deuce)
        
        let limo = App()
        limo.name = "Limo"
        limo.imageName = "5limo"
        limo.price = NSNumber(value: 50)
        limo.category = "All Day"
        transportation.append(limo)
        
        let mono = App()
        mono.name = "Monorail"
        mono.imageName = "5mono"
        mono.price = NSNumber(value: 5)
        mono.category = "7am - 3am"
        transportation.append(mono)
        
        let rentals = App()
        rentals.name = "Car Rentals"
        rentals.imageName = "5rentals"
        rentals.price = NSNumber(value: 120)
        rentals.category = "7am - 9pm"
        transportation.append(rentals)
        
        transportationCategory.apps = transportation
        
        //4th Category *****Airlines****
        let airlineCategory = AppCategory()
        airlineCategory.name = "Airlines"
        
        var airlines = [App]()
        
        let delta = App()
        delta.name = "Delta"
        delta.imageName = "6delta2"
        airlines.append(delta)
        
        let ameri = App()
        ameri.name = "American"
        ameri.imageName = "6ameri"
        airlines.append(ameri)
        
        let sw = App()
        sw.name = "Southwest"
        sw.imageName = "6sw"
        airlines.append(sw)
        
        let spir = App()
        spir.name = "Spirit"
        spir.imageName = "6spi2"
        airlines.append(spir)
        
        let unit = App()
        unit.name = "United"
        unit.imageName = "6unit"
        airlines.append(unit)
        
        airlineCategory.apps = airlines
        
        return [casinoCategory, restaurantCategory, transportationCategory, airlineCategory]
        
        
    }

}

class App: NSObject {
    
    var id: NSNumber?
    var name: String?
    var category: String?
    var imageName: String?
    var price: NSNumber?
    
}
