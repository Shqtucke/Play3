//
//  SecondViewController.swift
//  play3
//
//  Created by Shaun Tucker on 2/26/18.
//  Copyright © 2018 Shaun Tucker. All rights reserved.
//

import UIKit

class AirportViewController: UIViewController, UIWebViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let webV    = UIWebView()
        webV.frame  = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        webV.loadRequest(NSURLRequest(url: NSURL(string: "https://www.mccarran.com/")! as URL) as URLRequest)
        webV.delegate = self as! UIWebViewDelegate
        self.view.addSubview(webV)
        
        
        view.backgroundColor = UIColor.red
        //navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "LAS"
        
    }


}
