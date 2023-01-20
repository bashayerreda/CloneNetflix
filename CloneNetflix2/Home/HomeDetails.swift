//
//  HomeDetails.swift
//  CloneNetflix2
//
//  Created by Bashayer on 25/12/2022.
//

import SwiftUI
import Kingfisher

struct HomeDetails: View {
    var movie : Movie
    var viewmodel = HomeVm()
    var body: some View {
      
            ZStack {
                Color.black
                    .edgesIgnoringSafeArea(.all)
                ScrollView {
                LazyVStack {
                    TopRowView()
                        TopPreview(movie: movieExp)
                            .padding(.horizontal,-40)
                            .padding(.top,-100)
                            .zIndex(-1)
                   
                 
                    ForEach(viewmodel.computedCategory , id: \.self ) { category in
                        VStack {
                            HStack {
                                Text(category)
                                    .font(.title3)
                                    .bold()
                                Spacer()
                                
                            }
                            ScrollView(.horizontal , showsIndicators: false){
                                LazyHStack(spacing: 8) {
                                    ForEach(viewmodel.returnEachMovieFromItsCategory(category: category)){ movie in
                                        StanderedMovie(movie: movie)
                                           
                            
                           
                                        Spacer()
                                    }
                                    
                                    
                                }
                            }
                            
                            
                        }
                        
                    }
                    
                }
            }
            
            .foregroundColor(.white)
        }
    }
}

struct HomeDetails_Previews: PreviewProvider {
    static var previews: some View {
        HomeDetails(movie: movieExp)
    }

}


struct TopRowView: View {
    var body: some View {
        HStack{
            Button {
                
            } label: {
                Image("n")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50,height: 50)
                   
                  
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Text("Tv showes")
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Text("Movies")
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Text("My List")
            }
            
            
            Spacer()
            
            
        }
            .padding(.leading,10)
            .padding(.trailing,30)
    }
}
