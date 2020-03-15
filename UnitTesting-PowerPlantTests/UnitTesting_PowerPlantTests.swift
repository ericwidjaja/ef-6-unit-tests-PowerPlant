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
        
        // sut = "System Under Test"
        let sut = Bundle.parseJSONData(fileName: fileName, ext: ext)
        
        
        // Act
        
        // Asert
        
    }
    
//    func testLoadPowerPlantData() {
//        // Arrange
//        let powerPlantData = getTestPlantJSONData()
//
//        // Act
//        var allPowerPlantRecords = [RecordsWrapper]()
//
//        do {
//            allPowerPlantRecords = try PowerPlant.getPowerPlantData()
//        } catch {
//            print(error)
//        }
//        // Assert
//        XCTAssertTrue(allPowerPlantRecords.count == 14, "Expecting 10 PowerPlant Structs, but received \(allPowerPlantRecords.count)")
//    }
//
//    private func getTestPlantJSONData() -> Data {
//        guard let pathToData = Bundle.main.path(forResource: "powerPlantData", ofType: "json")
//            else {
//                fatalError("powerPlantData.json file not found")
//        }
//
//        let internalURL = URL(fileURLWithPath: pathToData)
//        do {
//            let data = try Data(contentsOf: internalURL)
//            return data
//
//        } catch {
//            fatalError("An error occured: \(error)")
//
//        }
//    }
//
//
}
