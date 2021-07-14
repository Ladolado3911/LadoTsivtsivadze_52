//
//  BookManager.swift
//  LadoTsivtsivadze_51
//
//  Created by lado tsivtsivadze on 7/13/21.
//

import UIKit

class ProductManager {
    
    private var networkManager: NetworkManager = NetworkManager()
    
    func getProducts(completion: @escaping (BookModel) -> Void) {
        networkManager.get(with: Endpoints.booksEndpoint) { result in
            <#code#>
        }
    }
}
