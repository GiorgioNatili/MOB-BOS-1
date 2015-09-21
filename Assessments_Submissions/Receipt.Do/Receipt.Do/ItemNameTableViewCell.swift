//
//  ItemNameTableViewCell.swift
//  Receipt.Do
//
//  Created by Marcy Regalado on 9/19/15.
//  Copyright © 2015 Marcy Regalado. All rights reserved.
//

import UIKit

class ItemNameTableViewCell: UITableViewCell {

    @IBOutlet var itemName: UIView!
    @IBOutlet var itemPrice: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
