//
//  EventListViewModel.swift
//  CountdownEvent
//
//  Created by Александр Новиков on 30.01.2023.
//

import Foundation

final class EventListViewModel {
    
    let title = "События"
    var coordinator: EventListCoordinator?
    var onUpdate = {}
    
    enum Cell {
        case event(EventCellViewModel)
    }
    
    private(set) var cells: [Cell] = []
    
    func viewDidLoad() {
        cells = [.event(EventCellViewModel()), .event(EventCellViewModel())]
        onUpdate()
    }
    
    func tappedAddEvent() {
        coordinator?.startAddEvent()
    }
    
    func numberOfRows() -> Int {
        return cells.count
    }
    
    func cell(at indexPath: IndexPath) -> Cell {
        return cells[indexPath.row]
    }
}
