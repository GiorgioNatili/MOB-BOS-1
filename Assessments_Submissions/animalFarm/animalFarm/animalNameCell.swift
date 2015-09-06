//
//  animalNameCell.swift
//  animalFarm
//
//  Created by Marcy Regalado on 9/6/15.
//  Copyright © 2015 Marcy Regalado. All rights reserved.
//

import UIKit

class animalNameCell: UITableViewCell {

    @IBOutlet var animalNameCell: UIView!
    
    @IBOutlet var animalName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
