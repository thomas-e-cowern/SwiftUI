//
//  ContentView.swift
//  Animation
//
//  Created by Thomas Cowern New on 1/28/20.
//  Copyright © 2020 Thomas Cowern New. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Circle().fill(Color.red).padding()
            Funny()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
