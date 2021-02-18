//
//  Rating.swift
//  Rattings
//
//  Created by Jonnattan Choque on 16/02/21.
//

import SwiftUI

struct Rating: View {
    @ObservedObject var vgStore : VideoGameStore
    @State var videoGame : VideoGame
    @Environment(\.presentationMode) var isViewPresented
    
    var body: some View {
        List(){
            Section{
                VStack(alignment: .leading) {
                    DetailTitle(title: "Título")
                    TextField("Escribe el título del juego", text: $videoGame.title)
                }
            }
            Section{
                VStack(alignment: .leading) {
                    DetailTitle(title: "Valoración")
                    HStack {
                        Spacer()
                        Text(String(repeating: "🚀", count: Int(videoGame.rating)))
                        Spacer()
                    }
                    Slider(value: $videoGame.rating, in: 1...10, step: 1)
                }
            }
            Section{
                HStack {
                    Toggle(isOn: $videoGame.played, label: {
                        DetailTitle(title: "Has jugado?")
                    })
                }
            }
            Section{
                Button(action: {
                    self.vgStore.addVideoGame(videogame: self.videoGame)
                    self.isViewPresented.wrappedValue.dismiss()
                }, label: {
                    HStack {
                        Spacer()
                        Text("Guardar")
                        Spacer()
                    }
                })
            }
        }.listStyle(GroupedListStyle())
    }
}

struct Rating_Previews: PreviewProvider {
    static var previews: some View {
        Rating(vgStore: VideoGameStore(), videoGame: VideoGame())
    }
}

struct DetailTitle: View {
    var title = ""
    var body: some View {
        Text(title)
            .font(.subheadline)
            .foregroundColor(.gray)
    }
}
