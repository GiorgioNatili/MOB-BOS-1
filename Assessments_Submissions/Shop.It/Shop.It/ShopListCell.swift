//
//  ShopListCell.swift
//  Shop.It
//
//  Created by Marcy Regalado on 9/7/15.
//  Copyright © 2015 Marcy Regalado. All rights reserved.
//

import UIKit

class ShopListCell: UITableViewCell {

    @IBOutlet var itemName: UILabel!
    @IBOutlet var itemImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
