//
//  DataManager2.swift
//  ManualMocking
//
//  Created by akio0911 on 2016/03/26.
//  Copyright © 2016年 akio0911. All rights reserved.
//

import Foundation

internal protocol FileManagerProtocol2 {
    func fileExistsAtPath(path: String) -> Bool
}

extension NSFileManager : FileManagerProtocol2 {}

public class DataManager2 {
    internal static var fileManager : FileManagerProtocol2 = NSFileManager()
    
    public static func isExistFile(path: String) -> Bool {
        return fileManager.fileExistsAtPath(path)
    }
}
