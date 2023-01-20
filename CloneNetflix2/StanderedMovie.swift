//
//  StanderedMovie.swift
//  CloneNetflix2
//
//  Created by Bashayer on 25/12/2022.
//

import SwiftUI
import Kingfisher

struct StanderedMovie: View {
    var movie : Movie
    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFit()
            //.frame(width: 100,height: 100)
    }
}

struct StanderedMovie_Previews: PreviewProvider {
    static var previews: some View {
        StanderedMovie(movie: movieExp)
    }
}
