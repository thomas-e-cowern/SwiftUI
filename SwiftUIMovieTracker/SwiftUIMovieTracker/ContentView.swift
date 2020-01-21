//
//  ContentView.swift
//  SwiftUIMovieTracker
//
//  Created by Thomas Cowern New on 1/16/20.
//  Copyright © 2020 Thomas Cowern New. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var title = ""
    @State var rating = 3.0
    @State var seen = false
    
    var body: some View {
        
        List {
            Section {
                TextField("Movie Title", text: $title)
            }
            Section {
                HStack {
                    Spacer()
                    Text(String(repeating: "⭐️", count: Int(rating))).foregroundColor(.yellow).font(.title)
                    Spacer()
                }
                Slider(value: $rating, in: 1...5, step: 1)
            }
            Section {
                Toggle(isOn: $seen) {
                    if title == "" {
                        Text("I Have Seen This Movie")
                    } else {
                        Text("I Have Seen \(title)")
                    }
                }
            }
            Section {
                Button(action: {}) {
                    HStack {
                        Spacer()
                        Text("Save")
                        Spacer()
                    }
                }
            }
        }.listStyle(GroupedListStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
