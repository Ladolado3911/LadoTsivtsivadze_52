//
//  TableDataSource.swift
//  LadoTsivtsivadze_51
//
//  Created by lado tsivtsivadze on 7/13/21.
//

import UIKit


protocol TableViewDataSource: TableDataSource {
    
    var tableview: UITableView! { get set }
    var cellsArr: [Cell]! { get set }
    var rootController: UIViewController? { get set }
    var data: Any? { get set }
    
    init(with collectionView: UITableView,
         with cellsArr: [Cell],
         with rootController: UIViewController,
         with data: Any)
    
    func configTable()
    func configCells()
}

extension TableViewDataSource {
    
    init(with tableview: UITableView,
         with cellsArr: [Cell],
         with rootController: UIViewController,
         width data: Any) {
        
        self.init()
        self.tableview = tableview
        self.cellsArr = cellsArr
        self.rootController = rootController
        self.data = data
        self.configTable()
        self.configCells()
    }
    
    func configTable() {
        self.tableview.dataSource = self
        self.tableview.delegate = self
    }
    
    func configCells() {
        cellsArr.forEach { cell in
            let nib = UINib(nibName: cell.nibName, bundle: nil)
            self.tableview.register(nib, forCellReuseIdentifier: cell.identifier)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let data = data as? Array<Any> {
            return data.count
        }
        else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = cellsArr.first
        let realCell = tableView.dequeueReusableCell(withIdentifier: (cell?.identifier)!)
        return realCell!
    }
}

