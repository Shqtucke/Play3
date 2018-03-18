//
//  CasinoViewController.swift
//  play3
//
//  Created by Shaun Tucker on 3/18/18.
//  Copyright © 2018 Shaun Tucker. All rights reserved.
//

import UIKit

class HotelViewController: UIViewController, UIWebViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let webV    = UIWebView()
        webV.frame  = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        webV.loadRequest(NSURLRequest(url: NSURL(string: "https://www.vdara.com/en.html")! as URL) as URLRequest)
        webV.delegate = self as! UIWebViewDelegate
        self.view.addSubview(webV)
        
        view.backgroundColor = UIColor.orange
        navigationItem.title = "Hotels"
    }

 

}
