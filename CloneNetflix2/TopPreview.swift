//
//  TopPreview.swift
//  CloneNetflix2
//
//  Created by Bashayer on 25/12/2022.
//

import SwiftUI
import Kingfisher

struct TopPreview: View {
    var movie : Movie
    
    func checkLastCategory(_ category : String ) -> Bool{
        let lastCategory = movie.Category.count
        if let  index = movie.Category.firstIndex(of: category) {
            if (index + 1 != lastCategory) {
                return true
                
                
            }
        }
        return false
        
        
    }
    
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
                .overlay(Color.black.opacity(0.5))
            VStack {
                HStack {
                    
                    ForEach(movie.Category , id: \.self){
                        Category in
                        Text(Category)
                            .font(.footnote)
                            .padding(.top,600)
                            .foregroundColor(.white)
                        if(checkLastCategory(Category)){
                            Image(systemName: "circle.fill")
                                .foregroundColor(.blue)
                                .font(.system(size: 3))
                                .padding(.top,600)
                               
                        }
                        
                        
                        
                    }
                }
                HStack {
                    Spacer()
                    AnimationButton(isOn: true, text: "My list ", onlineImg: "plus", offlineImg: "checkmark"){
                        
                    }
                    Spacer()
                    PlayButton(text: "play", playImage: "play.fill"){
                        
                    }.frame(width: 100)
                    
                    
                    Spacer()
                    AnimationButton(isOn: true, text: "Info", onlineImg: "info.circle", offlineImg: "info.circle"){
                        
                    }
                    Spacer()
                }
                
                
                
            }
            
            
        }
           
       
    }
    
}
struct TopPreview_Previews: PreviewProvider {
    static var previews: some View {
        TopPreview(movie: movieExp2)
    }
}
