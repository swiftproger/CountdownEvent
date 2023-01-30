//
//  EventListCoordinator.swift
//  CountdownEvent
//
//  Created by Александр Новиков on 30.01.2023.
//

import UIKit

final class EventListCoordinator: Coordinator {
    private(set) var childCoordinator: [Coordinator] = []
    
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let eventListViewController = EventListViewController.instantiate()
        navigationController.setViewControllers([eventListViewController], animated: true)
    }
}
