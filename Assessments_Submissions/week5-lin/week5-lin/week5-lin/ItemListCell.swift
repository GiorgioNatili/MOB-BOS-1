//
//  ItemListCell.swift
//  week5-lin
//
//  Created by Bo-Huei Lin on 9/9/15.
//  Copyright (c) 2015 Bo-Huei Lin. All rights reserved.
//

import UIKit

class ItemListCell: UITableViewCell {
    
    
    
    @IBOutlet var cellImage: UIImageView!
    @IBOutlet var cellLabel: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
