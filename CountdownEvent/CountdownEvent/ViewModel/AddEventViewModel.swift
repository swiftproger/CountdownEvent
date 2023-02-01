//
//  AddEventViewModel.swift
//  CountdownEvent
//
//  Created by Александр Новиков on 31.01.2023.
//

import Foundation

import UIKit

final class AddEventViewModel {
    
    enum Cell {
        case titleSubtitle(TitleSubtitleCellViewModel)
        case titleImage
    }
    
    
    var coordinator: AddEventCoordinator?
    
    func viewDidDisappear() {
        coordinator?.didFinishAddEvent()
    }
}

final class TitleSubtitleCellViewModel {
    let title: String
    private(set) var subtitle: String
    let placeholder: String
    
    init(title: String, subtitle: String, placeholder: String) {
        self.title = title
        self.subtitle = subtitle
        self.placeholder = placeholder
    }
}

final class TitleSubtitleCell: UITableViewCell {
    private let titleLabel = UILabel()
    private let subtitleTextField = UITextField()
    private let verticalStacView = UIStackView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
        setupHierarchy()
        setupLayout()
    }
    
    private func setupViews() {
        
    }
 
    private func setupHierarchy() {
        
    }
    
    private func setupLayout() {
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
