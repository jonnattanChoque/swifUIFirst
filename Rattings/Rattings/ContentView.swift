//
//  ContentView.swift
//  Rattings
//
//  Created by Jonnattan Choque on 15/02/21.
//

import SwiftUI

struct ContentView: View {
    @State var title : String = ""
    @State var rating = 3.0
    
    var body: some View {
        NavigationView{
            VStack{
                ZStack {
                    Image("cine")
                        .resizable()
                        .edgesIgnoringSafeArea(.top)
                        .aspectRatio(contentMode: .fit)
                    Text("I LOVE MOVIES!")
                        .font(.largeTitle)
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.white)
                }
                VStack{
                    Button(action: sayHello, label: {
                        HStack {
                            Text("Button")
                            Image(systemName: "gamecontroller")
                        }.padding()
                        .background(Color.red)
                        .cornerRadius(12)
                        .foregroundColor(.white)
                    })
                    NavigationLink(
                        destination: VideoGamesList(vgStore: VideoGameStore()),
                        label: {
                            Text("Navigate")
                        })
                }
            }
        }
        ///Image(systemName: "tornado")
//        Text("Hello, world!")
//            .foregroundColor(.pink)
//            .background(Color.green)
//            .padding()
//            .background(Color.blue)
    }
    
    func sayHello(){
        print("HOLA")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
