//
//  CollectionDataSource.swift
//  LadoTsivtsivadze_51
//
//  Created by lado tsivtsivadze on 7/13/21.
//

import UIKit

struct Cell {
    var nibName: String!
    var identifier: String!
    
    init(nibName nib: String, identifier id: String) {
        nibName = nib
        identifier = id
    }
}

protocol CollectionDataSource: CollectDataSource {
    
    var collectionView: UICollectionView! { get set }
    var cellsArr: [Cell]! { get set }
    var rootController: UIViewController? { get set }
    var data: Any? { get set}
    
    init(with collectionView: UICollectionView,
         with cellsArr: [Cell],
         with rootController: UIViewController,
         with data: Any)
    
    func configCollection()
    func configCells()
}

extension CollectionDataSource {
    
    init(with collectionView: UICollectionView,
         with cellsArr: [Cell],
         with rootController: UIViewController,
         with data: Any) {
        
        self.init()
        self.collectionView = collectionView
        self.cellsArr = cellsArr
        self.rootController = rootController
        self.data = data
        self.configCollection()
        self.configCells()
    }
    
    func configCollection() {
        self.collectionView.dataSource = self
        self.collectionView.delegate = self 
    }
    
    func configCells() {
        cellsArr.forEach { cell in
            let nib = UINib(nibName: cell.nibName, bundle: nil)
            self.collectionView.register(nib, forCellWithReuseIdentifier: cell.identifier)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let data = data as? Array<Any> {
            return data.count
        }
        else {
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cellsArr.first
        let realCell = collectionView.dequeueReusableCell(withReuseIdentifier: (cell?.identifier)!, for: indexPath)
        return realCell
    }
}
