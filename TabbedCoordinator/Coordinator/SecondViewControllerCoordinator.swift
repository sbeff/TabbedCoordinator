//
//  SecondViewControllerCoordinator.swift
//  TabbedCoordinator
//
//  Created by Emanuele Beffa on 18/03/2019.
//  Copyright © 2019 Emanuele Beffa. All rights reserved.
//

import UIKit

class SecondViewControllerCoordinator: NavigationBarCoordinator {
    let navigationController: UINavigationController
    
    func start() {
        let vc: SecondViewController = SecondViewController.instantiate()
        navigationController.tabBarItem = UITabBarItem(title: "SecondVC", image: nil, selectedImage: nil)
        navigationController.pushViewController(vc, animated: false)
        vc.navigationItem.title = "SecondViewController"
        vc.coordinator = self
    }
    
    init() {
        navigationController = UINavigationController()
    }
}
