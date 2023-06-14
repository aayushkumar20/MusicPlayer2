//
//  Model.swift
//  MusicPlayer
//
//  Created by Aayush kumar on 14/06/23.
//

import Foundation
import MediaPlayer

class Model: ObservableObject {
    
    static let shared = Model()
    
    @Published var currentSong: MPMediaItem?
    
    @Published var playlists = [MPMediaItemCollection]()
    @Published var librarySongs = [MPMediaItem]()
}
