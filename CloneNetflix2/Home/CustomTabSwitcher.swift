//
//  CustomTabSwitcher.swift
//  CloneNetflix2
//
//  Created by Bashayer on 26/12/2022.
//

import SwiftUI

struct CustomTabSwitcher: View {
    var movie : [Movie]
@State var CustomTabSelected : CustomTab =  .Episods
    func sizeCustomTabs(_ tab : CustomTab) -> CGFloat {
        let string = tab.rawValue
        return string.widthOfString(usingFont: .systemFont(ofSize: 16,weight: .bold))
        
    }
    var tabs : [CustomTab]
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            VStack {
                HStack {
                    ForEach(tabs , id: \.self){ tabs in
                        VStack{
                             Rectangle()
                                .frame(width:sizeCustomTabs(tabs),height: 10)
                                .padding(.leading,30)
    .foregroundColor(CustomTabSelected == tabs ? Color.red : Color.clear )
                            Button(action:{
                           CustomTabSelected = tabs
                            } , label: {
                             Text(tabs.rawValue)
                                    .padding(.leading,30)
                                  
    .foregroundColor(CustomTabSelected == tabs ? Color.white : Color.gray )
                            }).buttonStyle(PlainButtonStyle())
                           
                         
                            
                        }
                    }
                }
               
                    switch (CustomTabSelected){
                    case .Episods :
                        Text("Episods")
                          
                    
                    case .Trailers$More :
                        Text("trailers and more")
                    
                    case .MoreLikeThis :
                        MoreLikeThisCustomRow(movie: movieArray)
                    }
                
                
            }
        }
        
    }
    
    enum CustomTab : String {
        
        case Episods = "Episods"
        case Trailers$More = "Trailers $ More"
        case MoreLikeThis = "More like this"
        
    }
    
    struct CustomTabSwitcher_Previews: PreviewProvider {
        static var previews: some View {
            ZStack {
                Color.black
                    .ignoresSafeArea(.all)
                CustomTabSwitcher(movie: movieArray, tabs: [.Episods , .Trailers$More,.MoreLikeThis])
            }.foregroundColor(.white)
    
        }
    }
}

