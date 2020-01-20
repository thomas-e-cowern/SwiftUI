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
        ZStack {
            Image("typewriter").resizable().aspectRatio(contentMode: .fit);
            Button(action: hello) {
                Image(systemName: "play.fill").foregroundColor(.red).aspectRatio(contentMode: .fill).frame(width: 100, height: 100)
            }
        }
        
        //        Button(action: hello) {
        //            Text("New Button")
        //        }
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
