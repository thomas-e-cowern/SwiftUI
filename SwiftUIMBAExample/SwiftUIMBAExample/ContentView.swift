//
//  ContentView.swift
//  SwiftUIMBAExample
//
//  Created by Thomas Cowern New on 1/13/20.
//  Copyright © 2020 Thomas Cowern New. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    // Properties
    var player: Player
    
    var body: some View {
        VStack {
            Image(player.team.imageName).resizable().aspectRatio(contentMode: .fit)
            Image(player.imageName).clipShape(Circle()).background(Circle()).foregroundColor(.white).overlay(Circle().stroke(Color.white, lineWidth: 4)).offset(x: 0, y: -90).padding(.bottom, -90).shadow(radius: 15)
            
            Text(player.name).font(.system(size: 50)).fontWeight(.heavy).minimumScaleFactor(0.6)
            
            CapitalStatText(statName: "Age", statValue: "\(player.age)")
            CapitalStatText(statName: "Height", statValue: player.height)
            CapitalStatText(statName: "Weight", statValue: "\(player.weight)lbs")
            
            Spacer()
        }.edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(player: players[2]).environment(\.sizeCategory, .extraLarge).previewDevice("iPhone 8")
            ContentView(player: players[2]).environment(\.sizeCategory, .extraLarge).previewDevice("iPhone SE")
        }
    }
}
