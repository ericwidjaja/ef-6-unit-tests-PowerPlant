//
//  PowerPlantTableViewCell.swift
//  UnitTesting-PowerPlant
//
//  Created by Eric Widjaja on 3/16/20.
//  Copyright © 2020 EricW. All rights reserved.
//

import UIKit

class PowerPlantTableViewCell: UITableViewCell {
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var powerPlantName: UILabel!
    
    
    @IBOutlet weak var powerPlantType: UILabel!
    
    
    @IBOutlet weak var powerPlantCoordinates: UILabel!
    
    
    // MARK: - Internal Methods
    func setUpPowerPlants(with records: RecordsWrapper) {
        powerPlantName.text = records.fields.plant_name
        powerPlantType.text = records.fields.type
        powerPlantCoordinates.text = records.geometry.coordinates.description
    }
}
