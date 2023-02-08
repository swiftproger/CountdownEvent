//
//  EventDetailViewController.swift
//  CountdownEvent
//
//  Created by Александр Новиков on 08.02.2023.
//

import UIKit

final  class EventDetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var viewModel: EventDetailViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.onUpdate = { [weak self] in
            self?.imageView.image = self?.viewModel.image
        }
        
        viewModel.viewDidLoad()
    }
}
