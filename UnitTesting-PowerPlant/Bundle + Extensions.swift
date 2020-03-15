//
//  Bundle + Extensions.swift
//  UnitTesting-PowerPlant
//
//  Created by Eric Widjaja on 3/14/20.
//  Copyright © 2020 EricW. All rights reserved.
//

import Foundation

extension Bundle {
    
    static func parseJSONData(fileName: String, ext: String) -> Data {
        
        guard let fileURL = Bundle.main.url(forResource: fileName, withExtension: ext)
            else {
                fatalError("resource with the filename: \(fileName) was not found")
        }
        
        var data: Data!
        
        do {
            
            data = try Data.init(contentsOf: fileURL)
            
        } catch {
            fatalError("contents not found, error: \(error)")
        }
        
        return data
    }
}


