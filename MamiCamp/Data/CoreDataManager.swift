//
//  CoreDataManager.swift
//  MamiCamp
//
//  Created by Vido Valianto on 3/21/19.
//  Copyright © 2019 Vido Valianto. All rights reserved.
//

import Foundation
import CoreData


class CoreDataManager{
    static var shared : CoreDataManager = {
    return CoreDataManager()
    }()
    
    
    var cities = [CityEntity]()
    
    lazy var persistentContainer: NSPersistentContainer = {
        /*
         The persistent container for the application. This implementation
         creates and returns a container, having loaded the store for the
         application to it. This property is optional since there are legitimate
         error conditions that could cause the creation of the store to fail.
         */
        let container = NSPersistentContainer(name: "MamiCamp")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                
                /*
                 Typical reasons for an error here include:
                 * The parent directory does not exist, cannot be created, or disallows writing.
                 * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                 * The device is out of space.
                 * The store could not be migrated to the current model version.
                 Check the error message to determine what the actual problem was.
                 */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    // MARK: - Core Data Saving support
    
    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
    func fetchNewEntity(_ entityName : String) -> NSManagedObject{
        let context = persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: entityName, in: context)
        return NSManagedObject(entity: entity!, insertInto: context)
    }
    
    
    func addCity(cityEntity : CityEntity){
        self.cities.append(cityEntity)
        self.saveContext()
    }
    
    func addCities(cities : [CityEntity]){
        self.cities.append(contentsOf : cities)
        self.saveContext()
    }
    
    func loadCities(){
        let context = persistentContainer.viewContext
        do{
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "CityEntity")
            let results = try context.fetch(request)
            
            for result in results {
                self.cities.append(result as! CityEntity)
            }
        }
        catch {
                let nserror = error as NSError
                fatalError("Nserror \(nserror)")
            }
        
    }
}
