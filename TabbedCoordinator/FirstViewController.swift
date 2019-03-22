//
//  FirstViewController.swift
//  TabbedCoordinator
//
//  Created by Emanuele Beffa on 18/03/2019.
//  Copyright © 2019 Emanuele Beffa. All rights reserved.
//

import UIKit

protocol FirstViewControllerDelegate: class {
    func firstViewControllerDidPressButton(vc: FirstViewController)
}

class FirstViewController: UIViewController, Storyboarded {
    
    weak var delegate: FirstViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let button = UIButton()
        button.setTitle("Press me!", for: UIControl.State())
        button.sizeToFit()
        button.center = view.center
        button.addTarget(self, action: #selector(didPressButton), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc private func didPressButton() {
        delegate?.firstViewControllerDidPressButton(vc: self)
    }
}
