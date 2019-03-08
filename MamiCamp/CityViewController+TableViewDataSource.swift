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
        return self.cities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CityTableViewCell", for: indexPath) as!  CityTableViewCell
        print(self.cities[indexPath.row])
        cell.cityLbl.text = self.cities[indexPath.row]
        return cell
    }
    
}
