//
//  CoordinateModel.swift
//  MamiCamp
//
//  Created by Vido Valianto on 3/14/19.
//  Copyright © 2019 Vido Valianto. All rights reserved.
//

import Foundation
import SwiftyJSON

class CoordinateModel{
    var latitude : Double!
    var longitude : Double!
    
    
    init(){
        
    }
    
    required init(entity: CoordinateEntity){
        self.latitude = entity.latitude
        self.longitude = entity.longitude
    }
    
    func toCoordinatentity()->CoordinateEntity{
        let coordinateEntity = CoordinateEntity()
        coordinateEntity.latitude = self.latitude
        coordinateEntity.longitude = self.longitude
        return coordinateEntity
    }
    
    required init(object: JSON){
                self.latitude = object[0].doubleValue
                self.longitude = object[1].doubleValue
    }
    
    public var description :String {
        return "self latitude \(self.latitude) self longitude \(self.longitude)"
    }
}
