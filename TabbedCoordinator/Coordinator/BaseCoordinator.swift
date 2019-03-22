//
//  BaseCoordinator.swift
//  TabbedCoordinator
//
//  Created by Emanuele Beffa on 18/03/2019.
//  Copyright © 2019 Emanuele Beffa. All rights reserved.
//

import UIKit

protocol BaseCoordinator: Coordinator {
    var viewController: UIViewController? { get }
}
