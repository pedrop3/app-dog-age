//
//  dog_ageUITests.swift
//  dog_ageUITests
//
//  Created by Pedro Henrique Martins dos Santos on 8/10/25.
//

import XCTest

final class dog_ageUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    @MainActor
    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    @MainActor
    func testLaunchPerformance() throws {
        // This measures how long it takes to launch your application.
        measure(metrics: [XCTApplicationLaunchMetric()]) {
            XCUIApplication().launch()
        }
    }
    
    func testCalculateDogAge() throws {
        let app = XCUIApplication()
        app.launch()
        
        let ageField = app.textFields["inputAgeDog"]
        XCTAssertTrue(ageField.exists, "O campo de idade não foi encontrado.")
        ageField.tap()
        ageField.typeText("3")
        
        let calculateButton = app.buttons["Calculate"]
        XCTAssertTrue(calculateButton.exists, "O botão de calcular não foi encontrado.")
        calculateButton.tap()
        
        let resultLabel = app.staticTexts["resultAge"]
        XCTAssertTrue(resultLabel.exists, "O label de resultado não foi encontrado.")
        XCTAssertEqual(resultLabel.label, "The dog's age is: 21 years.")
    }


}
