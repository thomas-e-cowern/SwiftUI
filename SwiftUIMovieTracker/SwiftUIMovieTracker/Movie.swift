//
//  Movie.swift
//  SwiftUIMovieTracker
//
//  Created by Thomas Cowern New on 1/21/20.
//  Copyright © 2020 Thomas Cowern New. All rights reserved.
//

import Foundation

struct Movie: Identifiable {
    var id = UUID()
    var title = "Title"
    var rating = 3.0
    var seen = false
}

class MovieStorage: ObservableObject {
    @Published var movies = [Movie]()
}
