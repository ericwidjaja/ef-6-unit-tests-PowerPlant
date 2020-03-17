//  PowerPlant.swift
//  UnitTesting-PowerPlant
//  Created by Eric Widjaja on 3/11/20.
//  Copyright © 2020 EricW. All rights reserved.

import Foundation

struct PowerPlant: Codable {
    //https://jsonformatter.org/json-parser --> records consists of an array of RecordsWrapper
    let records: [RecordsWrapper]
}

struct RecordsWrapper: Codable {
    //https://app.quicktype.io/ --> fields consists of FieldsWrapper's objects
    let fields: FieldsWrapper
    let geometry: GeometryWrapper
}

struct FieldsWrapper: Codable {
    let plant_name: String
    let type: String
}

struct GeometryWrapper: Codable {
    let coordinates: [Double]
}


extension PowerPlant {
    //Parsing the powerPlantData.json into [RecordsWrapper] objects
    
    static func getPowerPlantData() -> [RecordsWrapper]{
        
        var recordsData = [RecordsWrapper]()
        
        guard let fileURL = Bundle.main.url(forResource: "powerPlantData", withExtension: "json")
            else {
                fatalError("could not locate json file")
        }
        
        do {
            let data = try Data(contentsOf: fileURL)
            let plantData = try JSONDecoder().decode(PowerPlant.self, from: data)
            recordsData = plantData.records
//            print(recordsData)
            
        }catch{
            fatalError("failed to loads from contents")
        }
        return recordsData }
}
