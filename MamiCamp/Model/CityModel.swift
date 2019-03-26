//
//  CityModel.swift
//  MamiCamp
//
//  Created by Vido Valianto on 3/14/19.
//  Copyright © 2019 Vido Valianto. All rights reserved.
//

import Foundation
import SwiftyJSON

class CityModel {
    
    let baseURL = "https://mamikos.com/"
    
    var imageUrl : String!
    var area = [AreaModel]()
    var city : String!
    
    init(){
        
    }
    
    required init(object: JSON){
        print("masuk")
        self.imageUrl = object["image_url"].stringValue
        self.city = object["city"].stringValue
        
        for areaJson in object["area"].arrayValue {
            let area = AreaModel(object: areaJson)
            area.name =  areaJson["name"].stringValue
            self.area.append(area)
        }
    }
    
    required init(entity:CityEntity){
        self.city = entity.city
        self.imageUrl = entity.imageUrl
        
        if let area_of_city = entity.area_of_city{
            for area in area_of_city{
                let areaModel = AreaModel(entity: area as! AreaEntity)
                self.area.append(areaModel)
            }
        }
    }
    
    func toCityEntity()-> CityEntity{
        let cityEntity = CoreDataManager.shared.fetchNewEntity("CityEntity") as! CityEntity
        cityEntity.imageUrl = self.imageUrl
        cityEntity.city = self.city
        
        for area in self.area {
            cityEntity.addToArea_of_city(area.toAreaEntity())
        }
        
        return cityEntity
    }
    
    func getRealImageURL () -> String{
        return baseURL + imageUrl
    }
}




