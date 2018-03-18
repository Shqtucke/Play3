//
//  ViewController.swift
//  play3
//
//  Created by Shaun Tucker on 2/18/18.
//  Copyright © 2018 Shaun Tucker. All rights reserved.
//

import UIKit

class FeaturedAppController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    private let cellId = "cellId"
    
    var appCategories: [AppCategory]?
    var cellData: [[String: AnyObject]] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //JSON - first steps added to retrieve JSON
        let url = Bundle.main.url(forResource: "pod", withExtension: "json")
        
        if let url = url {
            
            let data = NSData(contentsOf: url)
            
            if let data = data {
                //print(data)
                
                do {
                    let jsonObject = try JSONSerialization.jsonObject(with: data as Data, options: .allowFragments)
                    
                    //print(jsonObject)
                    if let object = jsonObject as? [String: AnyObject] {
                        
                        if let allCasinos = object["casinos"] as? [[String: AnyObject]] {
                            
                            
                            print(allCasinos)
                        }
                    }
                    
                } catch {
                    
                    print("error occured")
                }
            }
        }
        
        appCategories = AppCategory.sampleAppCategories()
        navigationItem.title = "Futucke inc"
        
        
        collectionView?.backgroundColor = UIColor.white
        collectionView?.register(CategoryCell.self, forCellWithReuseIdentifier: cellId)
    }

    
    func showDetailforCasino(app: App) {
        
        //click on category to go to new View Controller
        let layout = UICollectionViewFlowLayout()
        let appDetailController = CasinoDetailController(collectionViewLayout: layout)
        appDetailController.app = app 
        navigationController?.pushViewController(appDetailController, animated: true)
        
        
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! CategoryCell
        
       cell.appCategory = appCategories?[indexPath.item]
       cell.featuredAppsController = self

        return cell
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let count = appCategories?.count {
            return count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if indexPath.item == 3 {
            
            return CGSize(width: view.frame.width, height: 180)
        }
        
        
        return CGSize(width: view.frame.width, height: 200)
    }


}


    
    

