//
//  MovieList.swift
//  SwiftUIMovieTracker
//
//  Created by Thomas Cowern New on 1/21/20.
//  Copyright © 2020 Thomas Cowern New. All rights reserved.
//

import SwiftUI

struct MovieList: View {
    
    @ObservedObject var movieStorage = MovieStorage()
    
    var body: some View {
        NavigationView {
            List(movieStorage.movies) { currentMovie in
                NavigationLink(destination: ContentView(movie: currentMovie, movieStorage: self.movieStorage, newMovie: false)) {
                    Text(currentMovie.title)
                }
            }.navigationBarTitle("Movies").navigationBarItems(trailing:  NavigationLink(destination: ContentView(movie: Movie(), movieStorage: movieStorage, newMovie: true)) {
                Image(systemName: "plus.circle.fill")
                }
            )
        }
    }
}

struct MovieList_Previews: PreviewProvider {
    static var previews: some View {
        MovieList()
    }
}
