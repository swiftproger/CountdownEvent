//
//  AddEventCoordinator.swift
//  CountdownEvent
//
//  Created by Александр Новиков on 30.01.2023.
//

import Foundation
import UIKit

final class AddEventCoordinator: Coordinator {
    private(set) var childCoordinators: [Coordinator] = []
    private var navigationController: UINavigationController
    
    var perentCoordinator: EventListCoordinator?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let addEventController: AddEventViewController = .instantiate()
        let addEventViewModel = AddEventViewModel()
        addEventController.viewModel = addEventViewModel
        navigationController.present(addEventController, animated: true)
    }
    
    func didFinishAddEvent() {
        perentCoordinator?.childDidFinish(childCoordinator: self)
    }
}
