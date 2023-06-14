//
//  ContentView.swift
//  MusicPlayer
//
//  Created by Aayush kumar on 14/06/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = Model.shared
    
    var body: some View {
        TabView {
            PlaylistView()
                .environmentObject(model)
                .tabItem {
                    VStack{
                        Image(systemName: "music.note.list")
                        Text("Playlists")
                    }
                }
            
            LibraryView()
                .environmentObject(model)
                .tabItem {
                    VStack{
                        Image(systemName: "music.note")
                        Text("Library")
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
