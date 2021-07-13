//
//  MainTabbarController.swift
//  LadoTsivtsivadze_51
//
//  Created by Ladolado3911 on 12.07.21.
//

import UIKit

class MainTabbarController: UITabBarController, Storyboarded, CoordinatorDelegate {
    var coordinator: CoordinatorProtocol?
    
    private var homeCoordinator = HomeCoordinator()
    private var feedCoordinator = FeedCoordinator()
    private var libraryCoordinator = LibraryCoordinator()


    override func viewDidLoad() {
        super.viewDidLoad()

        viewControllers = [
            homeCoordinator.navigationController!,
            feedCoordinator.navigationController!,
            libraryCoordinator.navigationController!
        ]
    }
}
