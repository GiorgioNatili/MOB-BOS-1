//
//  SongTableViewCell.swift
//  musicPlayer
//
//  Created by Marcy Regalado on 9/21/15.
//  Copyright © 2015 Marcy Regalado. All rights reserved.
//

import UIKit

class SongTableViewCell: UITableViewCell, IRenderSong {
    
    //This files connects the UI elements to the code for updating to pass the data

    
    @IBOutlet var songImage: UIImageView!
    @IBOutlet var songTitle: UILabel!
    @IBOutlet var songAbout: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
        // MARK: IRenderSong 
        //needs to implement the method
    
    
    func updateTitle(title: String){
            songTitle.text = title
        }
        
        func updateDescription(about:String) {
            songAbout.text = about
        }
        
        func updateCover(cover:String) {
            songImage.image = UIImage(contentsOfFile: cover)
        }
    }

