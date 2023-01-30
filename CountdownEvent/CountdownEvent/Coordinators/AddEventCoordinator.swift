//
//  AddEventCoordinator.swift
//  CountdownEvent
//
//  Created by Александр Новиков on 30.01.2023.
//

import Foundation
import UIKit

final class AddEventCoordinator: Coordinator {
    private(set) var childCoordinator: [Coordinator] = []
    private var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    
    func start() {
        let viewController = UIViewController()
        viewController.view.backgroundColor = .blue
        navigationController.present(viewController, animated: true)
    }
}
