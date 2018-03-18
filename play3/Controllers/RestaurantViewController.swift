//
//  RestaurantViewController.swift
//  play3
//
//  Created by Shaun Tucker on 3/18/18.
//  Copyright © 2018 Shaun Tucker. All rights reserved.
//

import UIKit

class RestaurantViewController: UIViewController, UIWebViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let webV    = UIWebView()
        webV.frame  = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        webV.loadRequest(NSURLRequest(url: NSURL(string: "https://www.thrillist.com/eat/las-vegas/best-restaurants-las-vegas")! as URL) as URLRequest)
        webV.delegate = self as! UIWebViewDelegate
        self.view.addSubview(webV)
        
        
        view.backgroundColor = UIColor.blue
        navigationItem.title = "Restaurants"
    }



}
