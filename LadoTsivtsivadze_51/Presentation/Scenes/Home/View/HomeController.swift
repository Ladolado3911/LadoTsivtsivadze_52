//
//  HomeController.swift
//  LadoTsivtsivadze_51
//
//  Created by Ladolado3911 on 12.07.21.
//

import UIKit

class HomeController: BaseViewController {

    @IBOutlet weak var tblView: UITableView!
    private var tempDataSource: HomeTableDataSource!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configViewModel()

    }
    
    func configViewModel() {
        tempDataSource = HomeTableDataSource(with: tblView, rootController: self)
    }
}
