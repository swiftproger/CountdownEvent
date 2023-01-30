//
//  EventListViewController.swift
//  CountdownEvent
//
//  Created by Александр Новиков on 30.01.2023.
//

import UIKit

class EventListViewController: UIViewController {
    
    var viewModel: EventListViewModel!

    static func instantiate() -> EventListViewController {
        let soryboard = UIStoryboard(name: "Main", bundle: .main)
        let controller = soryboard.instantiateViewController(withIdentifier: "EventListViewController") as! EventListViewController
        return controller
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    private func setupViews() {
        let plusImage = UIImage(systemName: "plus.circle.fill")
        let barButtonItem = UIBarButtonItem(image: plusImage, style: .plain, target: self, action: #selector(tappedAddEventButton))
        barButtonItem.tintColor = .primary
        navigationItem.rightBarButtonItem = barButtonItem
        navigationItem.title = viewModel.title
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    @objc
    private func tappedAddEventButton() {
        viewModel.tappedAddEvent()
    }
}
