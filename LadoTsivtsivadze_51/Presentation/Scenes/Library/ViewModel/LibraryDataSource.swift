//
//  LibraryDataSource.swift
//  LadoTsivtsivadze_51
//
//  Created by lado tsivtsivadze on 7/12/21.
//

import UIKit

class LibraryDataSource: CollectDataSource {
    
    private var collectionView: UICollectionView!
    private var rootController: LibraryController!
    
    private var data: [Int] = [1, 2, 3]
    
    init(with collectionView: UICollectionView, rootController controller: LibraryController) {
        super.init()
        
        self.collectionView = collectionView
        self.rootController = controller
        
        configCollection()
    }
    
    func configCollection() {
        collectionView.dataSource = self
        collectionView.delegate = self
        
        let libNib = UINib(nibName: "LibraryCell", bundle: nil)
        collectionView.register(libNib, forCellWithReuseIdentifier: "LibraryCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "LibraryCell", for: indexPath) as? LibraryCell
        return cell!
    }
}
