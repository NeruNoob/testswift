//
//  test1Tests.swift
//  test1Tests
//
//  Created by Elie Page on 03/04/2017.
//  Copyright © 2017 Elie Page. All rights reserved.
//

import XCTest
@testable import test1

class test1Tests: XCTestCase {
  
  var vc: ViewController!
  
  override func setUp() {
    super.setUp()
    
    let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
    vc = storyboard.instantiateInitialViewController() as! ViewController
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func testExample() {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
  }
  
  func testCalc1() {
    let a = vc.myAdd(a: 4, b: 5)
    XCTAssert(a == 9)
  }
  
  func testPerformanceExample() {
    // This is an example of a performance test case.
    self.measure {
      // Put the code you want to measure the time of here.
    }
  }

}
