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

  func testStuffInt() {
    var result = vc.testingStuffInt()
    XCTAssert(result == 1, "marche pas : 1")
    result = vc.testingStuffInt()
    XCTAssert(result == 2, "marche pas : 2")
    result = vc.testingStuffInt()
    XCTAssert(result == 3, "marche pas : 3")
    result = vc.testingStuffInt()
    XCTAssert(result == 5, "marche pas : 5")
  }

}
