//
//  HomeViewController.swift
//  Lecture 51
//
//  Created by Nika Kirkitadze on 12.07.21.
//

import UIKit

class HomeViewController: BaseViewController {
    
//    private var homeServiceManager: HomeServicesManagerProtocol!
    private var dataSource: HomeTableViewDataSource?
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let cell1 = Cell(nibName: "HomeContentCell", identifier: "HomeContentCell")
        let cell2 = Cell(nibName: "HomeTitleCell", identifier: "HomeTitleCell")
        
        dataSource = HomeTableViewDataSource(tableView: tblView,
                                             cellsArray: [cell1, cell2],
                                             rootController: self,
                                             dataArray: [1, 2, 3, 4, 5],
                                             dataElement: Int.self)

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
