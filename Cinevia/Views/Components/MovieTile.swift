//
//  MovieTile.swift
//  Cinevia
//
//  Created by Vatsal Patel  on 8/28/24.
//

import SwiftUI
import Kingfisher

struct MovieTile: View {
    var movie: Movie
    
    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
            .frame(width: 150, height: 200)
    }
}

#Preview {
    MovieTile(movie: exampleMovie2)
}
