//
//  CityEntity+CoreDataProperties.swift
//  
//
//  Created by Vido Valianto on 3/21/19.
//
//

import Foundation
import CoreData


extension CityEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CityEntity> {
        return NSFetchRequest<CityEntity>(entityName: "CityEntity")
    }

    @NSManaged public var imageUrl: String?
    @NSManaged public var city: String?
    @NSManaged public var area_of_city: NSSet?

}

// MARK: Generated accessors for area_of_city
extension CityEntity {

    @objc(addArea_of_cityObject:)
    @NSManaged public func addToArea_of_city(_ value: AreaEntity)

    @objc(removeArea_of_cityObject:)
    @NSManaged public func removeFromArea_of_city(_ value: AreaEntity)

    @objc(addArea_of_city:)
    @NSManaged public func addToArea_of_city(_ values: NSSet)

    @objc(removeArea_of_city:)
    @NSManaged public func removeFromArea_of_city(_ values: NSSet)

}
