//
//  EventDetailCoordinator.swift
//  CountdownEvent
//
//  Created by Александр Новиков on 08.02.2023.
//

import Foundation
import UIKit

final class EventDetailCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
    }
}
