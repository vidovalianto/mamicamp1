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
    
    required init(entity : AreaEntity){
        self.name = entity.name
        
        if let coordinate_of_area = entity.coordinate_of_area{
            for coordinate in  coordinate_of_area{
                let coordinateModel = CoordinateModel(entity : coordinate as! CoordinateEntity)
                self.coordinate.append(coordinateModel)
            }
        }
        
    }
    
    func toAreaEntity()->AreaEntity{
        let areaEntity = AreaEntity()
        areaEntity.name = self.name
        
        
        for coordinate in self.coordinate{
            areaEntity.addToCoordinate_of_area(coordinate.toCoordinatentity())
        }
        
        return areaEntity
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
