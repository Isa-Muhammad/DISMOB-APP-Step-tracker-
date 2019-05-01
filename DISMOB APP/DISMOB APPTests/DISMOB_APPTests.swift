//
//  DISMOB_APPTests.swift
//  DISMOB APPTests
//
//  Created by Isa Muhammad on 01/05/2019.
//  Copyright © 2019 Isa Muhammad. All rights reserved.
//

import XCTest

class DISMOB_APPTests: XCTestCase {

    var userService: UserService!
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        userService = UserService.shared
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testFailureRegistration() {
        // failure test
        let success = userService.register(name: "", age: nil, sex: nil, height: nil, weight: nil)
        XCTAssert(success == false)
    }
    
    func testSucccessfulRegistration() {
        // success test
        let success = userService.register(name: "Joe", age: "21", sex: "m", height: "188", weight: "120")
        XCTAssert(success == true)
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let z = 4
        // dp p sth woth z
        XCTAssert(z == 4)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
