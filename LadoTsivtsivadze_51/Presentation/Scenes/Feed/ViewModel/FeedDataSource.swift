//
//  FeedDataSource.swift
//  LadoTsivtsivadze_51
//
//  Created by lado tsivtsivadze on 7/12/21.
//

import UIKit

class FeedDataSource: TableDataSource {
    
    private var tableView: UITableView!
    private var rootController: FeedController!
    
    init(with tableView: UITableView, rootController controller: FeedController) {
        super.init()
        self.tableView = tableView
        self.rootController = controller
        configTable()
    }
    
    func configTable() {
        tableView.dataSource = self
        tableView.delegate = self
        
        let authorNib = UINib(nibName: "AuthorCell", bundle: nil)
        tableView.register(authorNib, forCellReuseIdentifier: "AuthorCell")
        
        let bookNib = UINib(nibName: "BookCell", bundle: nil)
        tableView.register(bookNib, forCellReuseIdentifier: "BookCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "AuthorCell") as? AuthorCell
            return cell!
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell") as? BookCell
            return cell!
        }
    }
}
