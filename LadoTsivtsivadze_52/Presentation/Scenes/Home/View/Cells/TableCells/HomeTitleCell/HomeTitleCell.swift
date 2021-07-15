//
//  HomeTitleCell.swift
//  LadoTsivtsivadze_52
//
//  Created by lado tsivtsivadze on 7/14/21.
//

import UIKit
import Kingfisher

class HomeTitleCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    var product: ProductModel?
    
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
        
        guard let product = product else { return }
        titleLabel.text = product.title
        imgView.kf.setImage(with: product.image)
    }
}
