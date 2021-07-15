//
//  Cells.swift
//  LadoTsivtsivadze_52
//
//  Created by lado tsivtsivadze on 7/14/21.
//

import UIKit

struct Cells {
    static var homePageTable: [Cell] {
        let cell1 = Cell(nibName: "HomeContentCell", identifier: "HomeContentCell")
        let cell2 = Cell(nibName: "HomeTitleCell", identifier: "HomeTitleCell")
        return [cell1, cell2]
    }
    static var homePageCollect: [Cell] {
        let cell = Cell(nibName: "HomeCollectCell", identifier: "HomeCollectCell")
        return [cell]
    }
}
