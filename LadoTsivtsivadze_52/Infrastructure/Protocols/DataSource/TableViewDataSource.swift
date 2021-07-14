//
//  TableDataSource.swift
//  LadoTsivtsivadze_51
//
//  Created by lado tsivtsivadze on 7/13/21.
//

import UIKit


protocol TableViewDataSource: TableDataSource {
    
    associatedtype DataArray
    associatedtype RootController
    associatedtype Element
    
    var tableview: UITableView! { get set }
    var cellsArr: [Cell]! { get set }

    init(tableView tblView: UITableView,
         cellsArray arr: [Cell],
         rootController controller: RootController,
         dataArray data: DataArray,
         dataElement element: Element)
    
    func configTable()
    func configCells()
}

extension TableViewDataSource {
    
//    init(tableView tblView: UITableView,
//         cellsArray arr: [Cell],
//         rootController controller: Any,
//         dataArray data: Any) {
//
//        self.init()
//        self.tableview = tblView
//        self.cellsArr = arr
//        self.rootController = controller as? Self.RootController
//        self.data = data as? Self.DataArray
//        self.configTable()
//        self.configCells()
//    }
    
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
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        if let data = data as? Array<Any> {
//            return data.count
//        }
//        else {
//            return 0
//        }
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = cellsArr.first
//        let realCell = tableView.dequeueReusableCell(withIdentifier: (cell?.identifier)!)
//        return realCell!
//    }
}

final class GenericTableDataSource<T, E, F>: NSObject, TableViewDataSource {
    
    typealias DataArray = T
    typealias RootController = E
    typealias Element = F
    
    var tableview: UITableView!
    var cellsArr: [Cell]!
    var rootController: RootController!
    var data: DataArray!
    var element: Element!

    init(tableView tblView: UITableView,
         cellsArray arr: [Cell],
         rootController controller: RootController,
         dataArray data: DataArray,
         dataElement element: Element) {
        
        super.init()
        self.tableview = tblView
        self.cellsArr = arr
        self.rootController = controller
        //print(type(of: data))
        self.data = data
        self.element = element
//        print(self.data!)
//        print(type(of: self.data!))
        
        self.configTable()
        self.configCells()
        self.tableview.reloadData()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let data = self.data as? Array<Element> {
            print(data.count)
            return data.count
        }
        else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

