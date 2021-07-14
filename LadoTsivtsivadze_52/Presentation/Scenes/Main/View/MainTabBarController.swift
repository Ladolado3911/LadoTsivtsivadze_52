//
//  MainTabBarViewController.swift
//  Lecture 51
//
//  Created by Nika Kirkitadze on 12.07.21.
//

import UIKit

class MainTabBarController: UITabBarController, Storyboarded, CoordinatorDelegate {
    
    private var homeCoordinator = HomeCoordinator()
    var coordinator: CoordinatorProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()

        viewControllers = [
            homeCoordinator.navigationController!,
        ]
    }
}
