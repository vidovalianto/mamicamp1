//
//  CoordinateEntity+CoreDataProperties.swift
//  
//
//  Created by Vido Valianto on 3/21/19.
//
//

import Foundation
import CoreData


extension CoordinateEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CoordinateEntity> {
        return NSFetchRequest<CoordinateEntity>(entityName: "CoordinateEntity")
    }

    @NSManaged public var latitude: Double
    @NSManaged public var longitude: Double
    @NSManaged public var area_of_coordinate: AreaEntity?

}
