//
//  DriverList.swift
//  MiFirstApp
//
//  Created by Jhonnatan Choque on 13/02/21.
//

import SwiftUI

struct DriverList: View {
    var body: some View {
        NavigationView {
            List(drivers){
                driver in
                NavigationLink(destination: DriverDetail(driver: driver)){
                    DriverRow(driver: driver)
                }
            }.navigationBarTitle(Text("Formula 1 - 2019"), displayMode: .large)
        }
    }
}

struct DriverList_Previews: PreviewProvider {
    static var previews: some View {
        DriverList()
    }
}
