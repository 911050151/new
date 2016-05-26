//
//  ViewController.swift
//  WEB
//
//  Created by 20131105805李建青 on 16/5/26.
//  Copyright © 2016年 20131105805李建青. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Webview: UIWebView!
    
    @IBAction func Add(sender: AnyObject) {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Webview.loadRequest(NSURLRequest(URL: NSURL(string: "http://blog.csdn.net/abel_tu/article/details/46684887")!))
    }

    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

