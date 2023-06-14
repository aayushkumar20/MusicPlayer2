//
//  PlaylistView.swift
//  MusicPlayer
//
//  Created by Aayush kumar on 14/06/23.
//

import SwiftUI

struct PlaylistView: View {
    
    @EnvironmentObject var model: Model
    
    var body: some View {
        NavigationView {
            List {
                ForEach(model.playlists, id:\.self) { playlist in
                    PlaylistCardView()
                }
            }
        }
    }
}

struct PlaylistView_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistView()
    }
}
