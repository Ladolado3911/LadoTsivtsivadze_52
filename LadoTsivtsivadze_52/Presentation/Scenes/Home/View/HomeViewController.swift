//
//  HomeViewController.swift
//  Lecture 51
//
//  Created by Nika Kirkitadze on 12.07.21.
//

import UIKit

class HomeViewController: BaseViewController {
    
//    private var homeServiceManager: HomeServicesManagerProtocol!
    private var viewModel: HomeViewModel?
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configViewModel()
    }
    
    func configViewModel() {
        let dataSource = HomeTableViewDataSource(tableView: tblView,
                                             cellsArray: Cells.homePageTable,
                                             rootController: self,
                                             count: 4)
        
        viewModel = HomeViewModel(homeTableDataSource: dataSource, productManager: ProductManager())
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
