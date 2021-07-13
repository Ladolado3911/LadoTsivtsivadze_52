//
//  HomeBestSellingDataSource.swift
//  LadoTsivtsivadze_51
//
//  Created by lado tsivtsivadze on 7/12/21.
//

import UIKit

class HomeStoryDataSource: CollectDataSource {
    
    private var collectionView: UICollectionView!
    
    init(with collectionView: UICollectionView) {
        super.init()
        self.collectionView = collectionView
        configCollection()
    }
    
    func configCollection() {
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        
        let storyNib = UINib(nibName: "StoryCollectionCell", bundle: nil)
        self.collectionView.register(storyNib, forCellWithReuseIdentifier: "StoryCollectionCell")
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoryCollectionCell", for: indexPath) as? StoryCollectionCell
        return cell!
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 120, height: 202)
    }
}
