//
//  LibraryView.swift
//  MusicPlayer
//
//  Created by Aayush kumar on 14/06/23.
//

import SwiftUI

struct LibraryView: View {
    
    @EnvironmentObject var model: Model
    
    var body: some View {
        NavigationView {
            List {
                ForEach(model.librarySongs, id:\.self) { playlist in
                    PlaylistCardView()
                }
            }
        }
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
