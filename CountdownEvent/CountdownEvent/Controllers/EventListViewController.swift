//
//  EventListViewController.swift
//  CountdownEvent
//
//  Created by Александр Новиков on 30.01.2023.
//

import UIKit
import CoreData

class EventListViewController: UIViewController {
    
    private let coreDataManager = CoreDataManager()

    static func instantiate() -> EventListViewController {
        let soryboard = UIStoryboard(name: "Main", bundle: .main)
        let controller = soryboard.instantiateViewController(withIdentifier: "EventListViewController") as! EventListViewController
        return controller
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        
        
        coreDataManager.seveEvent(name: "Новый год", date: Date(), image: UIImage(systemName: "plus.circle.fill")!)
        print(coreDataManager.fetchEvents())
        
    }
    
    private func setupViews() {
        let plusImage = UIImage(systemName: "plus.circle.fill")
        let barButtonItem = UIBarButtonItem(image: plusImage, style: .plain, target: self, action: #selector(tappedRightButton))
        barButtonItem.tintColor = .primary
        navigationItem.rightBarButtonItem = barButtonItem
        navigationItem.title = "События"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    @objc
    private func tappedRightButton() {
        print("tappedRightButton")
    }
}
