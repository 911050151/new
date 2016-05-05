//
//  ViewController.swift
//  jifenqi1
//
//  Created by 20131105805李建青 on 16/5/5.
//  Copyright © 2016年 20131105805李建青. All rights reserved.
//

import UIKit

class add: UIViewController {
    
    @IBOutlet weak var a1: UILabel!
    @IBOutlet weak var a2: UILabel!
    var a=0;
    var b=0;
    @IBAction func jia(sender: AnyObject) {
        a++;
        a1.text!="\(a)";
    }
    @IBAction func jia1(sender: AnyObject) {
        b++;
        a2.text!="\(b)";
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


