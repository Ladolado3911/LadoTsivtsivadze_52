//
//  HomeTableView.swift
//  LadoTsivtsivadze_52
//
//  Created by lado tsivtsivadze on 7/14/21.
//

import UIKit

let arr = [1, 2, 3]

class HomeTableView {
    
    lazy var genericTableView = GenericTableDataSource(tableView: tableView,
                                                          cellsArray: cellsArray,
                                                          rootController: rootController,
                                                          dataArray: dataArray,
                                                          dataElement: element)
    private var tableView: UITableView!
    private var cellsArray: [Cell]!
    private var rootController: HomeViewController!
    private var dataArray: [Int]!
    private var element: Int!
    
    init(with tableView: UITableView,
         with cellsArray: [Cell],
         with rootController: HomeViewController,
         with dataArray: [Int],
         with element: Int) {
        
        self.tableView = tableView
        self.cellsArray = cellsArray
        self.rootController = rootController
        self.dataArray = dataArray
        self.element = element
    }
}

class HomeTableViewDataSource: GenericTableDataSource<Any, Any, Any> {
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = cellsArr.first
        let realCell = tableView.dequeueReusableCell(withIdentifier: (cell?.identifier)!)
        return realCell!
    }
}
