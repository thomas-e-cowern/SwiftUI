//
//  ContentView.swift
//  SwiftUIMovieTracker
//
//  Created by Thomas Cowern New on 1/21/20.
//  Copyright © 2020 Thomas Cowern New. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var movie: Movie
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var movieStorage : MovieStorage
    let newMovie: Bool
    
    var body: some View {
        
        List {
            Section {
                SectionTitle(title: "Title")
                TextField("Movie Title", text: $movie.title)
            }
            Section {
                HStack {
                    SectionTitle(title: "Rating")
                    Spacer()
                    Text(String(repeating: "⭐️", count: Int(movie.rating))).foregroundColor(.yellow).font(.title)
                    Spacer()
                }
                Slider(value: $movie.rating, in: 1...5, step: 1)
            }
            Section {
                SectionTitle(title: "Seen")
                Toggle(isOn: $movie.seen) {
                    if movie.title == "" {
                        Text("I Have Seen This Movie")
                    } else {
                        Text("I Have Seen \(movie.title)")
                    }
                }
            }
            Section {
                Button(action: {
                    if self.newMovie {
                        self.movieStorage.movies.append(self.movie)
                    } else {
                        
                    }
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    HStack {
                        Spacer()
                        Text("Save")
                        Spacer()
                    }.disabled(movie.title.isEmpty)
                }
            }
        }.listStyle(GroupedListStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(movie: Movie(), movieStorage: MovieStorage(), newMovie: true)
    }
}

struct SectionTitle: View {
    
    var title: String
    
    var body: some View {
        Text(title).font(.caption).foregroundColor(.gray)
    }
}
