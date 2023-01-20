//
//  Movie.swift
//  CloneNetflix2
//
//  Created by Bashayer on 25/12/2022.
//

import Foundation
struct Movie : Identifiable {
    var id : String
    var name : String
    var thumbnailURL : URL
    var Category : [String]
    
    var rate : String
    var year : Int
    var seasons : String?
    var anotherSeeText : String
    //put general info about show
    var displayGeneralOption : OrganizeSesson
    
    //put custom info about show
    var displayCustomInfo : OrganizeSesson?
   // var episods : [Episods]?
    
    
    var displayCustomEpisodeOnText : String {
        let display = displayCustomInfo
        if (display != nil){
            return "S\(display!.episodenum):E\(display!.sesson):\(display!.episodename)"
        }else {
            return "S\(displayGeneralOption.episodenum):E\(displayGeneralOption.sesson):\(displayGeneralOption.episodename)"
        }
        
    }
    
    var displayCustomEpisodeOnTextWithDes : String {
        let display = displayCustomInfo
        if (display != nil){
            return "\(display!.description)"
        }else {
            return "\(displayGeneralOption.description)"
        }
        
    }
  
    
}
struct OrganizeSesson : Hashable , Equatable {
    var episodename : String
    var description : String
    var episodenum : Int
    var sesson : Int
}
