//
//  StatsRaw.swift
//  MiFirstApp
//
//  Created by Jhonnatan Choque on 13/02/21.
//

import SwiftUI

struct StatsRaw: View {
    var statKey: String
    var statValue: String
    
    var body: some View {
        HStack {
            Text(statKey)
                .font(.system(size: 25))
                .fontWeight(.bold)
                .padding(.leading, 40)
            Text(statValue)
                .font(.system(size: 25))
                .fontWeight(.ultraLight)
                .padding(.trailing, 40)
            Spacer()
        }
    }
}

struct StatsRaw_Previews: PreviewProvider {
    static var previews: some View {
        StatsRaw(statKey: "Edad", statValue: "20")
    }
}
