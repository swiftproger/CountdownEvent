//
//  CoreDataManager.swift
//  CountdownEvent
//
//  Created by Александр Новиков on 30.01.2023.
//

import CoreData
import UIKit

final class CoreDataManager {
    lazy var persistenContainer: NSPersistentContainer = {
       let persistenContainer = NSPersistentContainer(name: "EventsApp")
        persistenContainer.loadPersistentStores { _, error in
            print(error?.localizedDescription ?? "###")
        }
        return persistenContainer
    }()
    
    var moc: NSManagedObjectContext {
        persistenContainer.viewContext
    }
    
    func seveEvent(name: String, date: Date, image: UIImage) {
        let event = Event(context: moc)
        event.setValue(name, forKey: "name")
        let imageData = image.jpegData(compressionQuality: 1)
        event.setValue(imageData, forKey: "image")
        event.setValue(date, forKey: "date")
        
        do {
            try moc.save()
        } catch {
            print(error)
        }
    }
    
    func fetchEvents() -> [Event] {
        do {
            let fetchRequest = NSFetchRequest<Event>(entityName: "Event")
            let events = try moc.fetch(fetchRequest)
            return events
        } catch {
            print(error)
            return []
        }
    }
}
