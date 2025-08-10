//
//  dog_ageTests.swift
//  dog.ageTests
//
//  Created by Pedro Henrique Martins dos Santos on 7/28/25.
//

import Testing
import XCTest
@testable import dog_age

struct dog_ageTests {
    
    final class DogAgeTests: XCTestCase {
        
        func testCalculateDogAgeInHumanYears() {
            let vc = ViewController()
            
            XCTAssertEqual(vc.calculateDogAgeInHumanYears(dogAge: 1), 7)
            XCTAssertEqual(vc.calculateDogAgeInHumanYears(dogAge: 2), 14)
            XCTAssertEqual(vc.calculateDogAgeInHumanYears(dogAge: 5), 35)
            XCTAssertEqual(vc.calculateDogAgeInHumanYears(dogAge: 1), 35)
        }
        
    }
}
