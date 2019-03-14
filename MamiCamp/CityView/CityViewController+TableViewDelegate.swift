//
//  CityViewController+TableViewDelegate.swift
//  MamiCamp
//
//  Created by Vido Valianto on 3/12/19.
//  Copyright © 2019 Vido Valianto. All rights reserved.
//

import Foundation
import UIKit

extension CityViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! CityTableViewCell
        cell.cityLbl.textColor = UIColor.blue
        
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "CampusViewController") as? CampusViewController{
            controller.titlePage = self.viewModel.cities[indexPath.row].city
            self.show(controller, sender: self)
        }else {
            print("error")
        }
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! CityTableViewCell
        cell.cityLbl.textColor = UIColor.red
    }
    
}
