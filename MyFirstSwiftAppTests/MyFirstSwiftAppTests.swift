//
//  MyFirstSwiftAppTests.swift
//  MyFirstSwiftAppTests
//
//  Created by 罗金浩 on 2018/1/16.
//  Copyright © 2018年 罗金浩. All rights reserved.
//

import XCTest
@testable import MyFirstSwiftApp

class MyFirstSwiftAppTests: XCTestCase {
    
    var mySimpleInterestCalculator: SimpleInterest = SimpleInterest()
    var myCompoundInterestCalculator: CompoundInterest = CompoundInterest()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testSimpileInterest() {
        // 这是一个功能测试用例
        var result: Double
        result = mySimpleInterestCalculator.calculate(loanAmount: 25_000, interestRate: 0.08, years: 10)
        XCTAssertEqual(result, 45000, accuracy: 0.1, "Unexpected result: \(result)")
    }
    
    func testCompoundInterest() {
        var result: Double
        result = myCompoundInterestCalculator.calculate(loanAmount: 25_000, interestRate: 0.08, years: 10)
        XCTAssertEqual(result, 53973.12, accuracy: 0.1, "Unexpected result: \(result)")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
