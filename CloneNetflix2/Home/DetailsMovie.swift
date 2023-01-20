//
//  DetailsMovie.swift
//  CloneNetflix2
//
//  Created by Bashayer on 26/12/2022.
//

import SwiftUI

struct DetailsMovie: View {
    var movie : Movie
    var body: some View {
        let screen = UIScreen.main.bounds
        VStack {
            HStack {
                Spacer()
                Button(action: {
                    //code logic
                }, label: {
                    Image(systemName: "xmark.circle")
                        .font(.system(size: 28))
                    
                })
            }.foregroundColor(.white)
               
            
            ScrollView (.vertical , showsIndicators: false){
                VStack {
                    StanderedMovie(movie: movieExp2)
                        .frame(width: screen.width / 2.5)
                    HStack {
                        Image(systemName: "hand.thumbsup.fill")
                            .foregroundColor(.white)
                        Text(String(movie.year))
                        Text(String(movie.rate))
                            .background(Color.white)
                        
                        if (movie.seasons !=  nil){
                            Text(String(movie.seasons!))
                            
                        } else {
                            Text("")
                        }
                        
                    }.foregroundColor(.gray)
                        .padding(.vertical,6)
                    
                    Text(movie.anotherSeeText)
                        .foregroundColor(.white)
                        .bold()
                    PlayButton(text: "Play", playImage: "play.fill",backgroundColor: .red){
                        
                    }
                    VStack {
                        HStack {
                            
                            Text(movie.displayCustomEpisodeOnText)
                            
                                .padding(.leading,-180)
                        }.foregroundColor(.white)
                        
                        HStack{
                            
                            Text(movie.displayCustomEpisodeOnTextWithDes)
                        }.foregroundColor(.white)
                    }
                
                    HStack(spacing: 60){
                        AnimationButton(isOn: true, text: "My List ", onlineImg: "checkmark", offlineImg: "plus"){}
                        AnimationButton(isOn: true, text: "Rate", onlineImg: "hand.thumbsup.fill", offlineImg: "hand.thumbsup"){}
                        AnimationButton(isOn: true, text: "Share", onlineImg: "square.and.arrow.up", offlineImg: "square.and.arrow.up"){}
                        Spacer()
                    }.foregroundColor(.white)
                    .padding(.top,4)
                    .padding(.leading,25)
                  
                }
                   
                
                }
            }
        }
    }


struct DetailsMovie_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .ignoresSafeArea(.all)
            
          DetailsMovie(movie: movieExp)
            }
            
        }
    }

