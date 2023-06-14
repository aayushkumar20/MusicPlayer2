//
//  MusicPlayerApp.swift
//  MusicPlayer
//
//  Created by Aayush kumar on 14/06/23.
//

import SwiftUI
import StoreKit
import MediaPlayer

@main
struct MusicPlayerApp: App {
    
    @Environment(\.scenePhase) var scenePhase
    
    init() {
        updateSongs()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onChange(of: scenePhase, perform: { value in
                    if value == .active {
                        updateSongs()
                    }
                })
        }
    }
    
    func updateSongs() {
        SKCloudServiceController.requestAuthorization { status in
            if status == .authorized {
                
                let songsQuery = MPMediaQuery.songs()
                if let songs = songsQuery.items {
                    let desc = NSSortDescriptor(key: MPMediaItemPropertyLastPlayedDate, ascending: false)
                    let sortedSongs = NSArray(array: songs).sortedArray(using: [desc])
                    
                    Model.shared.librarySongs = sortedSongs as! [MPMediaItem]
                }
                let playlistQuery = MPMediaQuery.playlists()
                if let playlists = playlistQuery.collections {
                    Model.shared.playlists = playlists
                }
            }
        }
    }
}
