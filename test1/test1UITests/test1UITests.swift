//
//  test1UITests.swift
//  test1UITests
//
//  Created by Elie Page on 03/04/2017.
//  Copyright © 2017 Elie Page. All rights reserved.
//

import XCTest

class test1UITests: XCTestCase {

  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
    // In UI tests it is usually best to stop immediately when a failure occurs.
    continueAfterFailure = false
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    XCUIApplication().launch()
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
  }

  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }

  func testExample() {
    let app = XCUIApplication()
    app.buttons["Add"].tap()

    let nameTextField = app.textFields["Name"]
    let descriptionTextField = app.textFields["Description"]
    let datePickersQuery = app.datePickers

    nameTextField.tap()
    nameTextField.typeText("zest")
    descriptionTextField.tap()
    descriptionTextField.typeText("citron")

    datePickersQuery.pickerWheels["Today"].swipeDown()
    datePickersQuery.pickerWheels["Mon, Apr 10"].swipeDown()
    app.switches["1"].tap()
    app.switches["0"].tap()
    app.buttons["Add task"].tap()

    app.buttons["Delete"].tap()
    app.buttons["Add"].tap()
    app.buttons["Add task"].tap()

    nameTextField.tap()
    nameTextField.typeText("gh in 4")
    app.switches["1"].tap()

    nameTextField.tap()
    app.textFields["Description"].tap()
    app.buttons["Add task"].tap()

    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
  }

}
