//
//  ContentView.swift
//  Animation
//
//  Created by Thomas Cowern New on 1/28/20.
//  Copyright © 2020 Thomas Cowern New. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var multiplier = 0.0
    @State var show = false
    
    var body: some View {
        VStack {
            Funny().rotationEffect(.init(degrees: 100 * multiplier))
            if show {
                Funny().transition(.slide)
            }
            Funny().rotationEffect(.init(degrees: 100 * multiplier))
            Button(action: {
                self.show.toggle()
                withAnimation {
                    self.multiplier += 1.0
                }
            }) {
                Text("Animate")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
