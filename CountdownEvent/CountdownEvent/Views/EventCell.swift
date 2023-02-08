//
//  EventCell.swift
//  CountdownEvent
//
//  Created by Александр Новиков on 08.02.2023.
//

import Foundation
import UIKit

final class EventCell: UITableViewCell {
    
    private let yearLabel = UILabel()
    private let monthLabel = UILabel()
    private let weekLabel = UILabel()
    private let dayLabel = UILabel()
    private let dateLabel = UILabel()
    
    private let eventNameLabel = UILabel()
    private let backgroundImage = UIImageView()
    
    private let verticalStackView = UIStackView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        [yearLabel, monthLabel, weekLabel, dayLabel, dateLabel, eventNameLabel, backgroundImage, verticalStackView].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        [yearLabel, monthLabel, weekLabel, dayLabel, dateLabel].forEach {
            
            $0.font = .systemFont(ofSize: 22, weight: .medium)
//            $0.textColor = .white
        }
        
        eventNameLabel.font = .systemFont(ofSize: 28, weight: .medium)
        verticalStackView.axis = .vertical
    }
    
    private func setupHierarchy() {
        contentView.addSubview(backgroundImage)
        contentView.addSubview(verticalStackView)
        
        [yearLabel, monthLabel, weekLabel, dayLabel, dateLabel].forEach {
            verticalStackView.addArrangedSubview($0)
        }
    }
    
    private func setupLayout() {
        backgroundImage.pinToSuperviewEdges()
        verticalStackView.pinToSuperviewEdges([.top, .right, .bottom], constant: 15)
        eventNameLabel.pinToSuperviewEdges([.left, .bottom], constant: 15)
    }
    
    func update(with viewModel: EventCellViewModel) {
        yearLabel.text = viewModel.yearText
        monthLabel.text = viewModel.monthText
        weekLabel.text = viewModel.weekText
        dayLabel.text = viewModel.dayText
        dateLabel.text = viewModel.dateText
        eventNameLabel.text = viewModel.eventName
        backgroundImage.image = viewModel.backgroundImage
    }
}
