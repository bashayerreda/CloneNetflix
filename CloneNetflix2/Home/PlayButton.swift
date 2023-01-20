//
//  PlayButton.swift
//  CloneNetflix2
//
//  Created by Bashayer on 26/12/2022.
//

import SwiftUI

struct PlayButton: View {
    var text : String
    var playImage : String
    var backgroundColor : Color = Color.white
    
    var action: () -> Void
    var body: some View {
        Button(action: action,  label: {
            HStack{
                Spacer()
                Image(systemName: playImage)
                Text(text)
                  
                Spacer()
            }.frame(height: 35)
            
        
            .foregroundColor(backgroundColor == .white ? .black : .white)
            .background(backgroundColor)
            .bold()
            .cornerRadius(3.0)
            .padding(.vertical,20)
               
               
               })
        
    }
}
               


struct PlayButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .ignoresSafeArea(.all)
            
            PlayButton(text: "Play", playImage: "play.fill",backgroundColor: Color.white){
                print("tapped")
            }
            
        }
    }
}
