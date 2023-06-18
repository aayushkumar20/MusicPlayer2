//
//  PlaylistCardView.swift
//  MusicPlayer
//
//  Created by Aayush kumar on 14/06/23.
//

import SwiftUI

struct PlaylistCardView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Spacer()
            
            HStack {
                Text("Playlist Name")
                Text("Playlist Details")
                
                Spacer()
                    
            }
            .padding(10)
            .frame(height: 50)
            .background(UIBlurEffect(style: UIBlurEffectStyle.systemMaterialDark))
        }
    }
        .background(
            Image(uiImage: UIImage())
                .
}

struct PlaylistCardView_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistCardView()
    }
}
