//
//  UIViewController.swift
//  CountdownEvent
//
//  Created by Александр Новиков on 31.01.2023.
//

import UIKit

extension UIViewController {
    static func instantiate<T>() -> T {
        let soryboard = UIStoryboard(name: "Main", bundle: .main)
        let controller = soryboard.instantiateViewController(withIdentifier: "\(T.self)") as! T
        return controller
    }
}
