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
    
    required init(object: JSON){
                self.latitude = object[0].doubleValue
                self.longitude = object[1].doubleValue
    }
    
    public var description :String {
        return "self latitude \(self.latitude) self longitude \(self.longitude)"
    }
}
