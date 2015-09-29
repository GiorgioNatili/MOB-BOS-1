//
//  SongCellDecorator.swift
//  musicPlayer
//
//  Created by Marcy Regalado on 9/21/15.
//  Copyright © 2015 Marcy Regalado. All rights reserved.
//

import UIKit

class SongCellDecorator: NSObject {
    
    //This file is the custome cell that is an NSObject
    //Here the song is being initilized and updated
    
    private var cell:IRenderSong!
    private var song:Song!
    
    init(cell: IRenderSong, song: Song) { //Cell is taking on the IRenderSong method while also calling the Song class we have
        
        //had to create a cococa touch
        
        super.init()
        
        self.cell = cell
        self.song = song
        
        self.updateData()
        
    }
    
    private func updateData() {
        cell.updateCover(song.cover)
        cell.updateTitle(song.title)
        cell.updateDescription(song.about)
    }

}
