//
//  HomeTableView.swift
//  LadoTsivtsivadze_52
//
//  Created by lado tsivtsivadze on 7/14/21.
//

import UIKit

class HomeTableViewDataSource: GenericTableDataSource<Any, Any, Any> {
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if indexPath.row % 2 != 0 {
            let cell = cellsArr.first
            let realCell = tableView.dequeueReusableCell(withIdentifier: (cell?.identifier)!)
            return realCell!
        }
        else {
            let cell = cellsArr[1]
            let realCell = tableView.dequeueReusableCell(withIdentifier: (cell.identifier)!)
            return realCell!
        }
    }
}
