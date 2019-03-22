//
//  FirstViewControllerCoordinator.swift
//  TabbedCoordinator
//
//  Created by Emanuele Beffa on 18/03/2019.
//  Copyright © 2019 Emanuele Beffa. All rights reserved.
//

import UIKit

class FirstViewControllerCoordinator: NavigationBarCoordinator {
    let navigationController: UINavigationController
    
    func start() {
        let vc: FirstViewController = FirstViewController.instantiate()
        navigationController.tabBarItem = UITabBarItem(title: "FirstVC", image: nil, selectedImage: nil)
        navigationController.pushViewController(vc, animated: false)
        vc.navigationItem.title = "FirstViewController"
        vc.coordinator = self
    }
    
    init() {
        navigationController = UINavigationController()
    }
}
