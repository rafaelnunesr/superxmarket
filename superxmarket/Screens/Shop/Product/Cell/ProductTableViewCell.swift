//
//  ProductTableViewCell.swift
//  superxmarket
//
//  Created by Rafael Nunes Rios on 2/23/21.
//

import UIKit

class ProductTableViewCell: UITableViewCell {
    
    static let identifier: String = "ProductTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "ProductTableViewCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
