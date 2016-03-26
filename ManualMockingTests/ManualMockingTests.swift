//
//  ManualMockingTests.swift
//  ManualMockingTests
//
//  Created by akio0911 on 2016/03/26.
//  Copyright © 2016年 akio0911. All rights reserved.
//

//Manual Mocking in Swift - iOS Unit Testing
//http://iosunittesting.com/manual-mocking-swift/

import XCTest
@testable import ManualMocking

class ManualMockingTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testDataManager2_Test1() {
        struct Manager : FileManagerProtocol2 {
            func fileExistsAtPath(path: String) -> Bool {
                return path == "XXX"
            }
        }
        DataManager2.fileManager = Manager()
        XCTAssertEqual(DataManager2.isExistFile("XXX"), true)
    }
    
    func testDataManager2_Test2() {
        struct Manager : FileManagerProtocol2 {
            func fileExistsAtPath(path: String) -> Bool {
                return path == "YYY"
            }
        }
        DataManager2.fileManager = Manager()
        XCTAssertEqual(DataManager2.isExistFile("XXX"), false)
    }
    
    func testDataManager3_Test1() {
        struct Manager : FileManagerProtocol3 {
            func isExists(path: String) -> Bool {
                return path == "XXX"
            }
        }
        DataManager3.fileManager = Manager()
        XCTAssertEqual(DataManager3.isExists("XXX"), true)
    }
    
    func testDataManager3_Test2() {
        struct Manager : FileManagerProtocol3 {
            func isExists(path: String) -> Bool {
                return path == "YYY"
            }
        }
        DataManager3.fileManager = Manager()
        XCTAssertEqual(DataManager3.isExists("XXX"), false)
    }

    func testDataManager4_Test1() {
        class CustomManager : DataManager4 {
            override class func fileExistsAtPath(path: String) -> Bool {
                return path == "XXX"
            }
        }
        XCTAssertEqual(CustomManager.isExists("XXX"), true)
    }
    
    func testDataManager4_Test2() {
        class CustomManager : DataManager4 {
            override class func fileExistsAtPath(path: String) -> Bool {
                return path == "YYY"
            }
        }
        XCTAssertEqual(CustomManager.isExists("XXX"), false)
    }
}
