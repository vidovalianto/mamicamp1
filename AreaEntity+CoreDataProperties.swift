//
//  AreaEntity+CoreDataProperties.swift
//  
//
//  Created by Vido Valianto on 3/21/19.
//
//

import Foundation
import CoreData


extension AreaEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<AreaEntity> {
        return NSFetchRequest<AreaEntity>(entityName: "AreaEntity")
    }

    @NSManaged public var name: String?
    @NSManaged public var city_of_area: CityEntity?
    @NSManaged public var coordinate_of_area: NSSet?

}

// MARK: Generated accessors for coordinate_of_area
extension AreaEntity {

    @objc(addCoordinate_of_areaObject:)
    @NSManaged public func addToCoordinate_of_area(_ value: CoordinateEntity)

    @objc(removeCoordinate_of_areaObject:)
    @NSManaged public func removeFromCoordinate_of_area(_ value: CoordinateEntity)

    @objc(addCoordinate_of_area:)
    @NSManaged public func addToCoordinate_of_area(_ values: NSSet)

    @objc(removeCoordinate_of_area:)
    @NSManaged public func removeFromCoordinate_of_area(_ values: NSSet)

}
