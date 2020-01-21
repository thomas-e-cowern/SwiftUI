//
//  MovieList.swift
//  SwiftUIMovieTracker
//
//  Created by Thomas Cowern New on 1/21/20.
//  Copyright © 2020 Thomas Cowern New. All rights reserved.
//

import SwiftUI

struct MovieList: View {
    
    var movies = [Movie(), Movie(), Movie()]
    
    var body: some View {
        List(movies) { movie in
            Text(movie.title)
            
        }
    }
}

struct MovieList_Previews: PreviewProvider {
    static var previews: some View {
        MovieList()
    }
}
