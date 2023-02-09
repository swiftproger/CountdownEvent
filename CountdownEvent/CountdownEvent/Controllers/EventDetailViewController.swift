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
    
    @IBOutlet weak var timeRemainingStackView: TimeRemainingStackView! {
        didSet {
            timeRemainingStackView.setup()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.onUpdate = { [weak self] in
            guard let self = self,
                  let timeRemainingViewModel = self.viewModel.timeRemainingViewModel
            else { return }
            self.imageView.image = self.viewModel.image
            self.timeRemainingStackView.update(with: timeRemainingViewModel)
        }
        
        viewModel.viewDidLoad()
    }
}
