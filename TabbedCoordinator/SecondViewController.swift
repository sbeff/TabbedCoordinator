//
//  SecondViewController.swift
//  TabbedCoordinator
//
//  Created by Emanuele Beffa on 18/03/2019.
//  Copyright © 2019 Emanuele Beffa. All rights reserved.
//

import UIKit

protocol SecondViewControllerDelegate: class {
    
}

class SecondViewController: UIViewController, Storyboarded {
    
    weak var delegate: SecondViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
    }
}
