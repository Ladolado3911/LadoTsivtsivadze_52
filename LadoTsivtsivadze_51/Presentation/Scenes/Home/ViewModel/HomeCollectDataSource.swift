//
//  HomeCollectDataSource.swift
//  LadoTsivtsivadze_51
//
//  Created by lado tsivtsivadze on 7/12/21.
//

import UIKit

class HomeCollectDataSource: CollectDataSource {
    
    private var collectionView: UICollectionView!
    private var rootController: HomeController!
    
    init(with collectionView: UICollectionView, rootController controller: HomeController) {
        super.init()
        
        self.collectionView = collectionView
        self.rootController = controller
        
        configCollection()
    }
    
    func configCollection() {
        collectionView.dataSource = self
        collectionView.delegate = self
        
        let coverNib = UINib(nibName: "coverCell", bundle: nil)
        collectionView.register(coverNib, forCellWithReuseIdentifier: "coverCell")
        
        collectionView.isPagingEnabled = true
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "coverCell", for: indexPath) as? coverCell
        return cell!
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.bounds.width / 3
        return CGSize(width: width, height: width * 1.5)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        let width = collectionView.bounds.width
        let spacing = (width / 2) - (width / 3)
        return spacing
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        let width = collectionView.bounds.width
        let distance = (width / 2) - (width / 6)
        return UIEdgeInsets(top: 0, left: distance, bottom: 0, right: distance)
    }
}
