//
//  HomeDataSource.swift
//  LadoTsivtsivadze_51
//
//  Created by lado tsivtsivadze on 7/12/21.
//

import UIKit

class HomeTableDataSource: TableDataSource {

    var tableView: UITableView!
    var rootController: HomeController!
    
    init(with tableView: UITableView, rootController controller: HomeController) {
        super.init()
        self.tableView = tableView
        self.rootController = controller
        configTable()
    }
    
    func configTable() {
        tableView.dataSource = self
        tableView.delegate = self
        
        let storyNib = UINib(nibName: "StoryCell", bundle: nil)
        tableView.register(storyNib, forCellReuseIdentifier: "StoryCell")
        
        let sellingNib = UINib(nibName: "BestSellingCell", bundle: nil)
        tableView.register(sellingNib, forCellReuseIdentifier: "BestSellingCell")
        
        let coverNib = UINib(nibName: "CoverTableCell", bundle: nil)
        tableView.register(coverNib, forCellReuseIdentifier: "CoverTableCell")

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CoverTableCell") as? CoverTableCell
            cell!.rootController = rootController
            return cell!
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "StoryCell") as? StoryCell
            return cell!
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "BestSellingCell") as? BestSellingCell
            return cell!
        default:
            return UITableViewCell()
        }
    }
}
