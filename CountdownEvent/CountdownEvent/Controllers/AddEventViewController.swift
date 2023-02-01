//
//  AddEventViewController.swift
//  CountdownEvent
//
//  Created by Александр Новиков on 31.01.2023.
//

import UIKit

class AddEventViewController: UIViewController {

    var viewModel: AddEventViewModel!
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        viewModel.viewDidDisappear()
    }
}
