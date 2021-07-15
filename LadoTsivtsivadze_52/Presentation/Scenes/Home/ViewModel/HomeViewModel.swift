//
//  HomeViewModel.swift
//  LadoTsivtsivadze_52
//
//  Created by lado tsivtsivadze on 7/15/21.
//

import UIKit

class HomeViewModel: NSObject {
    
    private var dataSource: HomeTableViewDataSource!
    private var productManager: ProductManager!
    
    init(homeTableDataSource dataSource: HomeTableViewDataSource, productManager manager: ProductManager) {
        super.init()
        
        self.dataSource = dataSource
        self.productManager = manager
    }
    
    
}
