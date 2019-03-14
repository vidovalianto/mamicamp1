//
//  CityViewController+TableViewDataSource.swift
//  MamiCamp
//
//  Created by Vido Valianto on 3/8/19.
//  Copyright © 2019 Vido Valianto. All rights reserved.
//

import Foundation
import UIKit

extension CityViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModel.cities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CityTableViewCell", for: indexPath) as!  CityTableViewCell
        cell.cityLbl.text = self.viewModel.cities[indexPath.row].city
        return cell
    }
    
}

extension CityViewController : CityViewModelDelegate{
    func onCitiesLoaded() {
        self.cityTV.reloadData()
    }
}
