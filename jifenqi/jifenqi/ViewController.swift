//
//  ViewController.swift
//  jifenqi
//
//  Created by 20131105805李建青 on 16/4/25.
//  Copyright © 2016年 20131105805李建青. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var red: UITextField!
    var a=0;
    var a1=0;

  @IBAction func add(sender: AnyObject) {
    a="0";
    a=red.text!;
    a=a+"1";
    red.text="\(a)";
    
    
       }
  @IBAction func add2(sender: AnyObject) {
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
