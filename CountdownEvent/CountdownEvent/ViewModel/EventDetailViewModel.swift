//
//  EventDetailViewModel.swift
//  CountdownEvent
//
//  Created by Александр Новиков on 08.02.2023.
//

import CoreData
import UIKit

final class EventDetailViewModel {
    private let eventID: NSManagedObjectID
    private let coreDataManager: CoreDataManager
    private var event: Event?
    var onUpdate = {}
    
    var image: UIImage? {
        guard let imageData = event?.image else { return nil }
        return UIImage(data: imageData)
    }
    
    init(eventID: NSManagedObjectID, coreDataManager: CoreDataManager = .shared) {
        self.eventID = eventID
        self.coreDataManager = coreDataManager
    }
    
    func viewDidLoad() {
        event = coreDataManager.getEvent(eventID)
        onUpdate()
    }
}
