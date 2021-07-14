//
//  MainController.swift
//  LadoTsivtsivadze_52
//
//  Created by lado tsivtsivadze on 7/14/21.
//

import UIKit

class MainController: BaseViewController {
    
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let cell = Cell(nibName: "TestCell", identifier: "TestCell")
        let data = ["1", "2", "3"]
        let data2 = [1, 2, 3]
        let tableDataSource = GenericTableDataSource(tableView: tblView,
                                                     cellsArray: [cell],
                                                     rootController: self,
                                                     dataArray: data,
                                                     rootType: type(of: self))
        
    }
}
