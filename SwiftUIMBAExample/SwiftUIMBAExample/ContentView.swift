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
            Image("steph").resizable().aspectRatio(contentMode: .fit)
            Text("Steph Curry")
            Spacer()
        }.edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
