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

  func testCalc1() {
    let result = 2 + 2
    XCTAssert(result == 4, "woops")
  }

}
