//
//  DriverDetail.swift
//  MiFirstApp
//
//  Created by Jhonnatan Choque on 13/02/21.
//

import SwiftUI

struct DriverDetail: View {
    var driver: Driver
    
    var body: some View {
        VStack {
            Image(driver.team.imageName)
                .resizable()
                .frame(height: 200)
            
            Image(driver.imageName)
                .clipShape(Circle())
                .background(Circle().foregroundColor(driver.team.color))
                .overlay(Circle().stroke(Color.white, lineWidth: 3))
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .offset(x: 0, y: -50)
                .padding(.bottom, -50)
        
            Text(driver.name)
                .font(.system(size: 35))
                .fontWeight(.bold)
            StatsRaw(statKey: "Edad: ", statValue: String(driver.age))
            StatsRaw(statKey: "Número: ", statValue: String(driver.number))
            StatsRaw(statKey: "Nacionalidad" , statValue: driver.birthPlace)
        }
    }
}

struct DriverDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DriverDetail(driver: drivers[0])
        }
    }
}
