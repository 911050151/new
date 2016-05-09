//
//  ViewController.swift
//  jifenqi1
//
//  Created by 20131105805李建青 on 16/5/5.
//  Copyright © 2016年 20131105805李建青. All rights reserved.
//

import UIKit

class add: UIViewController {
    
    var db:SQLiteDB!
    @IBOutlet weak var a1: UILabel!
    @IBOutlet weak var a2: UILabel!
    var a=0;
    var b=0;
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //获取数据库实例
        db = SQLiteDB.sharedInstance()
        //如果表还不存在则创建表（其中uid为自增主键）
        db.execute("create table if not exists t_user(uid integer primary key,uname varchar(20),mobile varchar(20))")
        //如果有数据则加载
        initUser();
    }
    @IBAction func jia(sender: AnyObject) {
        a++;
        a1.text!="\(a)";
        saveUser();
        //initUser();
    }
    @IBAction func jia1(sender: AnyObject) {
        b++;
        a2.text!="\(b)";
        saveUser();
        //initUser();
    }
    //点击保存
    
    //从SQLite加载数据
    func initUser() {
        let data = db.query("select * from t_user")
        if data.count > 0 {
            //获取最后一行数据显示
            let user = data[data.count - 1]
            a1.text = user["uname"] as? String
            a2.text = user["mobile"] as? String
        }
    }
    
    //保存数据到SQLite
    func saveUser() {
        let uname = a;//label使用保存数据都有前缀opention，a队
        let mobile = b;
        //插入数据库，这里用到了esc字符编码函数，其实是调用bridge.m实现的
        let sql = "insert into t_user(uname,mobile) values('\(uname)','\(mobile)')"
        print("sql: \(sql)")
        //通过封装的方法执行sql
        let result = db.execute(sql)
        print(result)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}


