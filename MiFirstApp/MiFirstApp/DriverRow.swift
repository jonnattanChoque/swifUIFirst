//
//  DriverRow.swift
//  MiFirstApp
//
//  Created by Jhonnatan Choque on 13/02/21.
//

import SwiftUI

struct DriverRow: View {
    var driver: Driver
    
    var body: some View {
        HStack {
            Image(driver.imageName)
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .padding(.leading, 0)
                .background(Circle().foregroundColor(driver.team.color))
                .overlay(Circle().stroke(Color.white, lineWidth: 3))
                .shadow(radius: 10)
            Text(driver.name)
                .font(.system(size: 30))
                .fontWeight(.bold)
                .padding(.trailing, 30)
            Spacer()
        }
    }
}

struct DriverRow_Previews: PreviewProvider {
    static var previews: some View {
        DriverRow(driver: drivers[0]).previewLayout(.fixed(width: 450, height: 40))
    }
}
