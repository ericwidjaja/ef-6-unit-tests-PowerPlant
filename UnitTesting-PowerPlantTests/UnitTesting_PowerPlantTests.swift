//  UnitTesting_PowerPlantTests.swift
//  UnitTesting-PowerPlantTests
//  Created by Eric Widjaja on 3/10/20.
//  Copyright © 2020 EricW. All rights reserved.

import XCTest
@testable import UnitTesting_PowerPlant

class UnitTesting_PowerPlantTests: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testReadingDataFromJSONFile() {
        
        // Arrange
        let fileName = "powerPlantData"
        let ext = "json"
        
        // Act
        let data = Bundle.readRawJSONData(fileName: fileName, ext: ext)

        // Asert
        XCTAssertNotNil(data, "We are getting data(bytes) from \(fileName)")
    }
    
    func testParsingJSONDataToRecordsArray() {
        // Arrange
        let fileName = "powerPlantData"
        let ext = "json"
        let data = Bundle.readRawJSONData(fileName: fileName, ext: ext)
        
        // Act
        let powerPlants = PowerPlant.getPowerPlantData()
        
        // Assert
//        XCTAssertGreaterThan(powerPlants.count, 14, "Expected number of Power Plants: \(powerPlants.count), which is greater than 14" )
        XCTAssertEqual(powerPlants.count, 14, "Expected number of Power Plants: \(powerPlants.count), which is EQUAL to 14")
    }
}
