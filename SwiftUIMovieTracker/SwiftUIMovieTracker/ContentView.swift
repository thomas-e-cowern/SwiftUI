//
//  ContentView.swift
//  SwiftUIMovieTracker
//
//  Created by Thomas Cowern New on 1/16/20.
//  Copyright © 2020 Thomas Cowern New. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Button(action: {}) {
            HStack {
                Text("Tap Me")
                Image(systemName: "gamecontroller")
            }
        }.padding().background(Color.blue).cornerRadius(10).foregroundColor(.white)
    }
    
    func hello () {
        print("This is the new Hello")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
