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
        Image("typewriter").resizable().aspectRatio(contentMode: .fit)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
