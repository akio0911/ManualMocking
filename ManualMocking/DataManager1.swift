//
//  DataManager1.swift
//  ManualMocking
//
//  Created by akio0911 on 2016/03/26.
//  Copyright © 2016年 akio0911. All rights reserved.
//

import Foundation

public class DataManager1 {
    public static func isExistFile(path: String) -> Bool {
        let fileManager = NSFileManager()
        return fileManager.fileExistsAtPath(path)
    }
}
