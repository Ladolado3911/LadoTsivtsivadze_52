//
//  HomeTableView.swift
//  LadoTsivtsivadze_52
//
//  Created by lado tsivtsivadze on 7/14/21.
//

import UIKit

class HomeTableViewDataSource: GenericTableDataSource<Any, Any, Any> {
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        switch indexPath.row {
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: (cellsArr.first?.identifier)!)
            return cell!
        default:
            let cell = tableview.dequeueReusableCell(withIdentifier: cellsArr[1].identifier)
            return cell!
        }
    }
}
