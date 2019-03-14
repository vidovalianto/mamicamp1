//
//  AreaModel.swift
//  MamiCamp
//
//  Created by Vido Valianto on 3/14/19.
//  Copyright © 2019 Vido Valianto. All rights reserved.
//

import Foundation
import SwiftyJSON

class AreaModel {
    var coordinate = [CoordinateModel]()
    var name :String!
    
    init(){
        
    }
    
    required init(object: JSON){
            self.name =  object["name"].stringValue
            
            for coordinateJson in object["coordinate"].arrayValue{
                let coordinate = CoordinateModel(object: coordinateJson)
                print(coordinate.description)
                self.coordinate.append(coordinate)
        }
    }
}
