//
//  FirstViewController.swift
//  TabbedCoordinator
//
//  Created by Emanuele Beffa on 18/03/2019.
//  Copyright © 2019 Emanuele Beffa. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, Storyboarded {
    
    weak var coordinator: FirstViewControllerCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
    }
}
