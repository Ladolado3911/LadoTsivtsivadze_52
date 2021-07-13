//
//  HomeViewModel.swift
//  LadoTsivtsivadze_51
//
//  Created by lado tsivtsivadze on 7/12/21.
//

import UIKit

class HomeViewModel {
    
    private var rootController: HomeController!
    private var dataSource: HomeTableDataSource!
    
    init(rootController controller: HomeController, dataSource source: HomeTableDataSource) {
        rootController = controller
        dataSource = source
    }
}
