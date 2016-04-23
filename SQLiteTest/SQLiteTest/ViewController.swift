//
//  ViewController.swift
//  SQLiteTest
//
//  Created by StrongString on 4/23/16.
//  Copyright © 2016 ketchup. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let myDatabase = FMDatabase(path: Utils.documentPath("test.sqlite"))
    let sql_stmt = "CREATE TABLE IF NOT EXISTS CONTACTS (ID INTEGER PRIMARY KEY AUTOINCREMENT, DATE DATE,CHECK_TIME TEXT, WORK_TIME NUMBER(5,2), REST_TIME NUMBER(5,2), TYPE TEXT, HOLYDAY BOOL, APPROVE BOOL)"
    
    func createTable() -> Bool {
        if 
    }
    
    func openTable() -> Void {
        if myDatabase == nil {
            // database를 찾을 수 없어 생성.
            
        } else {
            if myDatabase.open() {
                // database가 준비됨.
                print("oepn success")
                
                if !myDatabase.executeStatements(sql_stmt) {
                    print("create fail")
                } else {
                    print("create success")
                }
                
            } else {
                print("oepn fail")
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.openTable()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

