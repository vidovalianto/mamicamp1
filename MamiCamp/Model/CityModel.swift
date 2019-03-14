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
}




