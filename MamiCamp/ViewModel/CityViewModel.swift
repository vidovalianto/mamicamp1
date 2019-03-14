//
//  CityViewModel.swift
//  MamiCamp
//
//  Created by Vido Valianto on 3/14/19.
//  Copyright © 2019 Vido Valianto. All rights reserved.
//

import Foundation

class CityViewModel{
    
    func loadCities(){
        NetworkFacade.getApi(url: "https://mamikos.com/garuda/area") {
            (json) in
            print(json)
        }
    }
    
    
    
}
