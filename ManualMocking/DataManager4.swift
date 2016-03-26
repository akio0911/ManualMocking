//
//  DataManager4.swift
//  ManualMocking
//
//  Created by akio0911 on 2016/03/26.
//  Copyright © 2016年 akio0911. All rights reserved.
//

import Foundation

public class DataManager4 {
    public class func isExists(path: String) -> Bool {
        return self.fileExistsAtPath(path)
    }
    
    internal class func fileExistsAtPath(path: String) -> Bool {
        return NSFileManager().fileExistsAtPath(path)
    }
}
