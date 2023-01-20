//
//  AnimationButton.swift
//  CloneNetflix2
//
//  Created by Bashayer on 26/12/2022.
//

import SwiftUI

struct AnimationButton: View {
    var isOn : Bool
    var text : String
    var onlineImg : String
    var offlineImg : String

var image : String {
       if isOn {
            return onlineImg
        }
        else {
            return offlineImg
        }
           
        
    }
    
    var action: () -> Void
    var body: some View {
        Button(action: {
            action()
        }, label: {
            VStack {
                Image(systemName: image)
                    .foregroundColor(.white)
                     .font(.footnote)
                Text(text)
                    .foregroundColor(.white)
            }
       
        })
       
    }
}

struct AnimationButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .ignoresSafeArea(.all)
            
            AnimationButton(isOn: true, text: "My List", onlineImg: "checkmark", offlineImg: "plus"){
                print("tapped")
            }
            
        }
    }
}
