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
    
    
    // Testing on ability to read data from JSON file
    func testReadingDataFromJSONFile() {
        
        // Arrange
        let fileName = "powerPlantData"
        let ext = "json"
        
        // Act
        let data = Bundle.readRawJSONData(fileName: fileName, ext: ext)

        // Asert
        XCTAssertNotNil(data, "We are getting data(bytes) from \(fileName)")
    }
    
    
    // Testing if the numbers of power plants is equal to the numbers provided in JSON file
    func testParsingJSONDataToRecordsArray() {
        // Arrange
        let fileName = "powerPlantData"
        let ext = "json"
        let data = Bundle.readRawJSONData(fileName: fileName, ext: ext)
        
        // Act
        let powerPlants = PowerPlant.getPowerPlantData()
        
        // Assert
        XCTAssertEqual(powerPlants.count, 14, "Expected number of Power Plants: \(powerPlants.count), which is EQUAL to 14")
    }
}
