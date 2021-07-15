//
//  HomeViewModel.swift
//  LadoTsivtsivadze_52
//
//  Created by lado tsivtsivadze on 7/15/21.
//

import UIKit

class HomeViewModel: NSObject {
    
    private var tableView: UITableView!
    private var rootController: HomeViewController!
    private var productManager: ProductManager!
    private var dataSource: HomeTableViewDataSource?
    private var spinner: UIActivityIndicatorView!
    
    init(productManager manager: ProductManager,
         rootController controller: HomeViewController,
         tableView tblView: UITableView,
         spinner spin: UIActivityIndicatorView) {
        
        super.init()
        self.productManager = manager
        self.tableView = tblView
        self.rootController = controller
        self.spinner = spin
        drawTable()
    }
    
    func getProducts(completion: @escaping ([ProductModel]) -> Void) {
        productManager.getProducts { result in
            switch result {
            case .success(let products):
                completion(products)
            case .failure(let error):
                print("error is \(error)")
            }
        }
    }
    
    func drawTable() {
        spinner.isHidden = false
        spinner.startAnimating()
        getProducts { [weak self] products in
            guard let self = self else { return }
            DispatchQueue.main.async {
                self.dataSource = HomeTableViewDataSource(tableView: self.tableView,
                                        cellsArray: Cells.homePageTable,
                                        rootController: self.rootController!,
                                        dataArray: Array(products.prefix(4)),
                                        dataElement: ProductModel.self)
                
                self.spinner.stopAnimating()
                self.spinner.isHidden = true
            }
        }
    }
    
}
