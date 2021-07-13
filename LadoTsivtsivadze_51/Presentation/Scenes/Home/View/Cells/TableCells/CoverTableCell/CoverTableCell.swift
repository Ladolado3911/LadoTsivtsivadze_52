//
//  CoverTableCell.swift
//  LadoTsivtsivadze_51
//
//  Created by lado tsivtsivadze on 7/12/21.
//

import UIKit

class CoverTableCell: UITableViewCell {
    
    @IBOutlet weak var collectView: UICollectionView!
    private var collectDataSource: HomeCollectDataSource!
    var rootController: HomeController?
    
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
        collectDataSource = HomeCollectDataSource(with: collectView, rootController: rootController)
        
    }
    
}
