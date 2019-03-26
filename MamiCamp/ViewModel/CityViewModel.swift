//
//  CityViewModel.swift
//  MamiCamp
//
//  Created by Vido Valianto on 3/14/19.
//  Copyright © 2019 Vido Valianto. All rights reserved.
//

import Foundation

protocol CityViewModelDelegate {
    func onCitiesLoaded ()
}

class CityViewModel{
    
    var delegate : CityViewModelDelegate?
    var cities = [CityModel]()
    
    func loadCities(){
        NetworkFacade.getApi(url: "https://mamikos.com/garuda/area") {
            (json) in
            for object in json["campus"].arrayValue{
                let city = CityModel(object : object)
                self.cities.append(city)
                CoreDataManager.shared.addCity(cityEntity: city.toCityEntity())
            }
            self.delegate?.onCitiesLoaded()
        }
    }
}
