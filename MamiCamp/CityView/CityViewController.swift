//
//  CityViewController.swift
//  MamiCamp
//
//  Created by Vido Valianto on 3/8/19.
//  Copyright © 2019 Vido Valianto. All rights reserved.
//

import UIKit

class CityViewController: UIViewController{
    
    let cities = ["Yogya","Bandung","Jakarta","Surabaya","Solo"]
    
    @IBOutlet weak var cityTV: UITableView!
    
    lazy var viewModel = CityViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cityTV.dataSource = self
        cityTV.delegate = self
        
        viewModel.delegate = self
        
        viewModel.loadCities()
        

        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
