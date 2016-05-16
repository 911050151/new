//
//  ViewController.swift
//  web
//
//  Created by 20131105805李建青 on 16/5/16.
//  Copyright © 2016年 20131105805李建青. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var NewWeb1: UIWebView!
    
    @IBAction func NewWeb(sender: AnyObject) {
        let url=NSURL(string:"http://blog.csdn.net/emperorzhi/article/details/44101711");
        let request=NSURLRequest(URL:url!);
        NewWeb1.loadRequest(request);
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

