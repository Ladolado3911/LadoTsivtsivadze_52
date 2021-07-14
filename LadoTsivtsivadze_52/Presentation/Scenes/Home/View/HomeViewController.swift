//
//  HomeViewController.swift
//  Lecture 51
//
//  Created by Nika Kirkitadze on 12.07.21.
//

import UIKit

class HomeViewController: BaseViewController {
    
//    private var homeServiceManager: HomeServicesManagerProtocol!
    private var dataSource = HomeTableViewDataSource?.self
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        dataSource = HomeTableViewDataSource(tableView: tblView,
//                                             cellsArray: <#T##[Cell]#>,
//                                             rootController: <#T##GenericTableDataSource<Any, Any, Any>.RootController#>,
//                                             dataArray: <#T##GenericTableDataSource<Any, Any, Any>.DataArray#>,
//                                             dataElement: <#T##GenericTableDataSource<Any, Any, Any>.Element#>)

//        homeServiceManager = HomeServicesManager()
//        homeServiceManager.fetchHomeData()
        
        //coordinator?.productManager.ge
    }
    

    @IBAction func onOpenProducts(_ sender: Any) {
        
//        let vc = UIViewController()
//        vc.view.backgroundColor = .green
//
//        self.tabBarController?.navigationController?.pushViewController(vc, animated: true)
//
        coordinator?.proceedToProducts()
    }
   

}
