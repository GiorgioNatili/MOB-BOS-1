//
//  SongProvider.swift
//  musicPlayer
//
//  Created by Marcy Regalado on 9/21/15.
//  Copyright © 2015 Marcy Regalado. All rights reserved.
//

import Foundation
import UIKit
import SwiftyJSON
import Alamofire

class SongProvider: NSObject {
    
    //this is the function that provides the song information to then populate the cell
    
    //BONUS FOR PROJECT: HOW CAN YOU CREATE ONLY ONE VARIABLE SONG THAT FETCHES THE SONG?? :)
    
    static func fetchSongs()  {
        
        var parsed = [Song]()
        let postEndpoint: String = "https://demo0390005.mockable.io/random"
        
        Alamofire.request(.GET, postEndpoint)
            .responseJSON { request, response, result in
                
                let jsonSongs = JSON(result.value!)
                
                for (_, subJson):(String, JSON) in jsonSongs {
                    
                    parsed.append(createSong(subJson))
                    
                }
                
                NSNotificationCenter.defaultCenter().postNotificationName("songsFeteched", object: parsed)
                
        }
        
    }
    
    private static func createSong(data:JSON) -> Song {
        
        let song = Song()
        
        song.title = String(data["title"])
        song.about = String(data["description"])
        song.cover = String(data["imageUrl"])
        
        return song
        
    }

    
}
