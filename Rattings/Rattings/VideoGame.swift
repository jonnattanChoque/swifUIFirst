//
//  VideoGame.swift
//  Rattings
//
//  Created by Jonnattan Choque on 16/02/21.
//

import SwiftUI
import Combine

struct VideoGame: Identifiable {
    var id: UUID = UUID()
    var title: String = "COD"
    var rating: Double = 5.0
    var played: Bool = false
}

class VideoGameStore: ObservableObject {
    let didChange = PassthroughSubject<Void,Never>()
    @Published var videogames : [VideoGame] = []{
        willSet{
            didChange.send()
        }
    }
    
    init(){
        var vg1 = VideoGame()
        vg1.title = "COD"
        vg1.played = true
        vg1.rating = 4
        
        var vg2 = VideoGame()
        vg2.title = "GOW"
        vg2.played = false
        vg2.rating = 9
        
        videogames = [vg1, vg2]
    }
    
    func addVideoGame(videogame: VideoGame){
        videogames.append(videogame)
    }
}
