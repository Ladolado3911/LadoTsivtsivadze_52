//
//  HomeContentCell.swift
//  LadoTsivtsivadze_52
//
//  Created by lado tsivtsivadze on 7/14/21.
//

import UIKit

class HomeContentCell: UITableViewCell {
    
    @IBOutlet weak var collectView: UICollectionView!
    var rootController: HomeViewController?
    private var dataSource: HomeCollectViewDataSource?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        guard let rootController = rootController else { return }
        dataSource = HomeCollectViewDataSource(collectionView: collectView,
                                               cellsArray: Cells.homePageCollect,
                                               rootController: rootController,
                                               count: 4)
    }
    
}
