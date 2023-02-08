//
//  EventDetailCoordinator.swift
//  CountdownEvent
//
//  Created by Александр Новиков on 08.02.2023.
//

import Foundation
import UIKit
import CoreData

final class EventDetailCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    private let navigationController: UINavigationController
    private let eventID: NSManagedObjectID
    
    init(
        eventID: NSManagedObjectID,
        navigationController: UINavigationController) {
            self.eventID = eventID
            self.navigationController = navigationController
    }
    
    func start() {
        let detailViewController: EventDetailViewController = .instantiate()
        detailViewController.viewModel = EventDetailViewModel(eventID: eventID)
        navigationController.pushViewController(detailViewController, animated: true)
    }
}
