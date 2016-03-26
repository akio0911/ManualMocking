//
//  DataManager3.swift
//  ManualMocking
//
//  Created by akio0911 on 2016/03/26.
//  Copyright © 2016年 akio0911. All rights reserved.
//

import Foundation

internal protocol FileManagerProtocol3 {
    func isExists(path: String) -> Bool
}

extension NSFileManager : FileManagerProtocol3 {
    func isExists(path: String) -> Bool {
        return self.fileExistsAtPath(path)
    }
}

public class DataManager3 {
    internal static var fileManager : FileManagerProtocol3 = NSFileManager()
    
    public static func isExists(path: String) -> Bool {
        return fileManager.isExists(path)
    }
}
