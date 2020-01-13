//
//  ContentView.swift
//  SwiftUIMBAExample
//
//  Created by Thomas Cowern New on 1/13/20.
//  Copyright © 2020 Thomas Cowern New. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("gs").resizable().aspectRatio(contentMode: .fit)
            Image("steph").clipShape(Circle()).background(Circle()).foregroundColor(.white).overlay(Circle().stroke(Color.white, lineWidth: 4)).offset(x: 0, y: -90).padding(.bottom, -90).shadow(radius: 15)
            
            Text("Steph Curry").font(.system(size: 50)).fontWeight(.heavy)
            
            CapitalStatText(statName: "Age", statValue: "32")
            CapitalStatText(statName: "Height", statValue: "6'3")
            CapitalStatText(statName: "Weight", statValue: "190lbs")
            
            Spacer()
        }.edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
