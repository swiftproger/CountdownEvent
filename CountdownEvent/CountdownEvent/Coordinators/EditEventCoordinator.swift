//
//  EditEventCoordinator.swift
//  CountdownEvent
//
//  Created by Александр Новиков on 10.02.2023.
//

import Foundation
import UIKit

final class EditEventCoordinator: Coordinator {
    
    private(set) var childCoordinators: [Coordinator] = []
    private var navigationController: UINavigationController
    private var completion: (UIImage) -> Void = { _ in }
    private let event: Event
    
    var parentCoordinator: EventDetailCoordinator?
    
    init(event: Event,
         navigationController: UINavigationController
    ) {
        self.event = event
        self.navigationController = navigationController
    }
    
    func start() {
        let editEventController: EditEventViewController = .instantiate()
        let editEventViewModel = EditEventViewModel(event: event, cellBuilder: EventCellBuilder())
        editEventViewModel.coordinator = self
        editEventController.viewModel = editEventViewModel
        navigationController.pushViewController(editEventController, animated: true)
        
    }
    
    func didFinish() {
        parentCoordinator?.childDidFinish(self)
    }
    
    func didFinishUpdateEvent() {
        parentCoordinator?.onUpdateEvent()
        navigationController.popViewController(animated: true)
    }
    
    func showImagePicker(completion: @escaping (UIImage) -> Void) {
        self.completion = completion
        let imagePickerCoordinator = ImagePickerCoordinator(navigationController: navigationController)
        imagePickerCoordinator.parentCoordinator = self
        imagePickerCoordinator.onFinishPicking = { image in
            completion(image)
        }
        childCoordinators.append(imagePickerCoordinator)
        imagePickerCoordinator.start()
    }
    
    func childDidFinish(_ childCoordinator: Coordinator) {
        if let index = childCoordinators.firstIndex(where: { coordinator in
            childCoordinator === coordinator
        }) {
            childCoordinators.remove(at: index)
        }
    }
}
