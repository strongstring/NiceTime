//
//  utils.swift
//  SQLiteTest
//
//  Created by StrongString on 4/23/16.
//  Copyright © 2016 ketchup. All rights reserved.
//

import Foundation

class Utils {
    class func documentPath(fileName : String) -> String {
        let documents = try! NSFileManager.defaultManager().URLForDirectory(.DocumentDirectory, inDomain: .UserDomainMask, appropriateForURL: nil, create: false)
        let fileURL = documents.URLByAppendingPathComponent(fileName)
        
        return fileURL.path!
    }
}