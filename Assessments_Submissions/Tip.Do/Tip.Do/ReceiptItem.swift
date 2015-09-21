//
//  ReceiptItem.swift
//  Tip.Do
//
//  Created by Marcy Regalado on 9/14/15.
//  Copyright © 2015 Marcy Regalado. All rights reserved.
//

import UIKit

class ReceiptItem: UITableViewCell {

    
    @IBOutlet var person: UILabel!
    @IBOutlet var item: UILabel!
    @IBOutlet var itemPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
