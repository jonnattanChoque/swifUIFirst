//
//  VideoGamesList.swift
//  Rattings
//
//  Created by Jonnattan Choque on 16/02/21.
//

import SwiftUI

struct VideoGamesList: View {
    @ObservedObject var vgStore : VideoGameStore
    @State var isPresented : Bool = false
    
    var body: some View {
        List{
            Button(action: {
                self.isPresented.toggle()
            }, label: {
                HStack {
                    Text("Crear juego")
                    Image(systemName: "gamecontroller")
                }
            }).sheet(isPresented: $isPresented, content: {
                Rating(vgStore: vgStore, videoGame: VideoGame())
            })
            ForEach(vgStore.videogames){ game in
                NavigationLink(
                    destination: Rating(vgStore: self.vgStore, videoGame: game),
                    label: {
                        Text(game.title)
                    }
                ).background(!game.played ? Color.red : Color.blue)
            }
        }
    }
}

struct VideoGamesList_Previews: PreviewProvider {
    static var previews: some View {
        VideoGamesList(vgStore: VideoGameStore())
    }
}
