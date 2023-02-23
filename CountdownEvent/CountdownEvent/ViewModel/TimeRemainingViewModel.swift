//
//  TimeRemainingViewModel.swift
//  CountdownEvent
//
//  Created by Александр Новиков on 08.02.2023.
//

import UIKit

final class TimeRemainingViewModel {
    
    let timeRemainingParts: [String]
    private let mode: Mode
    
    enum Mode {
        case cell
        case detail
    }
    
    var fontSize: CGFloat {
        switch mode {
        case .cell:
            return 25
        case .detail:
            return 60
        }
    }
    
    var alignment: UIStackView.Alignment {
        switch mode {
        case .cell:
            return .trailing
        case .detail:
            return .center
        }
    }
    
    init(timeRemainingParts: [String], mode: Mode) {
        self.timeRemainingParts = timeRemainingParts
        self.mode = mode
    }
}
