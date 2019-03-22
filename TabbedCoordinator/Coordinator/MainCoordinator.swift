//
//  MainCoordinator.swift
//  TabbedCoordinator
//
//  Created by Emanuele Beffa on 18/03/2019.
//  Copyright © 2019 Emanuele Beffa. All rights reserved.
//

import UIKit

class MainCoordinator: TabBarCoordinator {
    let tabBarController: UITabBarController
    
    var childCoordinators: [Coordinator] = [Coordinator]()
    
    init() {
        tabBarController = UITabBarController()
    }
    
    func start() {
        let firstVCCoordinator: FirstViewControllerCoordinator = FirstViewControllerCoordinator()
        firstVCCoordinator.start()
        childCoordinators.append(firstVCCoordinator)
        
        let secondVCCoordinator: SecondViewControllerCoordinator = SecondViewControllerCoordinator()
        secondVCCoordinator.start()
        childCoordinators.append(secondVCCoordinator)
        
        tabBarController.setViewControllers([firstVCCoordinator.navigationController, secondVCCoordinator.navigationController], animated: false)
    }
}
