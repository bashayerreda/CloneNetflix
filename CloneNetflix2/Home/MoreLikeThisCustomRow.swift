//
//  MoreLikeThisCustomRow.swift
//  CloneNetflix2
//
//  Created by Bashayer on 27/12/2022.
//

import SwiftUI
import Kingfisher

struct MoreLikeThisCustomRow: View {
    var movie : [Movie]
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns ){
                ForEach(movie) { movie in
                    
                   StanderedMovie(movie: movie)
                        .padding(.top,5)
                        .padding(.leading,4)
                        .padding(.trailing,4)
            }
        }
       
           
        }
       
    }
}

struct MoreLikeThisCustomRow_Previews: PreviewProvider {
    static var previews: some View {
        MoreLikeThisCustomRow(movie: movieArray).foregroundColor(.black)
    }
}
