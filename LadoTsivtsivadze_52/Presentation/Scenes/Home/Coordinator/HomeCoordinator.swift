//
//  HomeCoordinator.swift
//  Lecture 51
//
//  Created by Nika Kirkitadze on 12.07.21.
//

import UIKit

final class HomeCoordinator: CoordinatorProtocol {
    
    
    var networkManger: NetworkManagerProtocol?
    var productManager: ProductManager?
    var navigationController: UINavigationController?
    
    init(_ window: UIWindow? = nil, navigationController: UINavigationController? = UINavigationController()) {
        self.navigationController = navigationController
        self.navigationController?.isNavigationBarHidden = true
        
        let vc = HomeViewController.instantiateFromStoryboard()
        vc.coordinator = self
        vc.tabBarItem.image = UIImage(named: "homeIcon")
        vc.title = "Home"
        
        self.navigationController?.viewControllers = [vc]
        
        networkManger = NetworkManager()
        productManager = ProductManager()
    }
    
    func start() {
        
    }
    
    func openSuccessAlert() {
        let alert = UIAlertController(title: "Success", message: "You have successfully purchased the item", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: { action in
            self.navigationController?.popToRootViewController(animated: true)
        }))
        
        self.navigationController?.present(alert, animated: true)
    }
}


// A -> B -> C 
