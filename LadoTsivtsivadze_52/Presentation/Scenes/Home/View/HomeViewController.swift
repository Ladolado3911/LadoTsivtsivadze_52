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
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //spinner.isHidden = true
        configViewModel()
    }
    
    func configViewModel() {
        viewModel = HomeViewModel(productManager: ProductManager(),
                                  rootController: self,
                                  tableView: tblView,
                                  spinner: spinner)
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
