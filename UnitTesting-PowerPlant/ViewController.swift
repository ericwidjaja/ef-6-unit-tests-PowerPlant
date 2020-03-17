//  ViewController.swift
//  UnitTesting-PowerPlant
//  Created by Eric Widjaja on 3/10/20.
//  Copyright © 2020 EricW. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - IBOutlet

    @IBOutlet weak var powerPlantTableView: UITableView!
    
    //MARK: - Internal Variables
    
    var powerPlants = [RecordsWrapper]() {
        didSet {
            powerPlantTableView.reloadData()
        }
    }
    
    // MARK: - Lifecycle Overrides Methods
    override func viewDidLoad() {
        super.viewDidLoad()
//        dump(PowerPlant.getPowerPlantData())
        configureTableView()
        loadData()
    }
    
    //MARK: - Private Methods
    private func configureTableView() {
        powerPlantTableView.dataSource = self
        powerPlantTableView.delegate = self
    }
    
    
    private func loadData() {
        powerPlants = PowerPlant.getPowerPlantData()
    }
    
    
}
// MARK:- UITableViewDelegate Conformance
extension ViewController: UITableViewDelegate {
}

// MARK:- UITableViewDataSource Conformance
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return powerPlants.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "powerPlantCell", for: indexPath) as? PowerPlantTableViewCell
            
            else {
                fatalError("Developer Error: Unexpected class for cell with reuseID countryCell")
        }
        
        let plants = powerPlants[indexPath.row]
        cell.setUpPowerPlants(with: plants)
        return cell
    }
    
    
}

