//
//  HomeHelpers.swift
//  CloneNetflix2
//
//  Created by Bashayer on 25/12/2022.
//

import Foundation
import UIKit
 
let movieExp = Movie(id: UUID().uuidString, name: "HELLO", thumbnailURL: URL(string: "https://picsum.photos/200/300")!, Category: ["suspend","tragety","comedy","romance","action"],rate: "TV-MA",year: 2020, seasons: "5 sessons",anotherSeeText: "see season 5 now !",displayGeneralOption: displayGeneralInfoEx,displayCustomInfo: displayCustomInfoEx)

let movieExp2 = Movie(id: UUID().uuidString, name: "See", thumbnailURL: URL(string: "https://picsum.photos/200/305")!,Category: ["suspend","tragety","comedy","romance","action"],rate: "TV-MA",year: 2021, anotherSeeText: "Best Tv show", displayGeneralOption: displayGeneralInfoEx)

let movieExp3 = Movie(id: UUID().uuidString, name: "Wednesday", thumbnailURL: URL(string: "https://picsum.photos/200/306")!,Category: ["suspend","tragety","comedy","romance","action"],rate: "TV-MA",year: 2022, seasons: "3 sessons" ,anotherSeeText: "see season 3 now !", displayGeneralOption: displayGeneralInfoEx)

let movieExp4 = Movie(id: UUID().uuidString, name: "Dark", thumbnailURL: URL(string: "https://picsum.photos/200/307")!,Category: ["suspend","tragety","comedy","romance","action"],rate: "TV-MA",year: 2018, anotherSeeText: "Watch now", displayGeneralOption: displayGeneralInfoEx)
let movieExp5 = Movie(id: UUID().uuidString, name: "Black Mirror", thumbnailURL: URL(string: "https://picsum.photos/200/308")!,Category: ["suspend","tragety","comedy","romance","action"],rate: "TV-MA",year: 2019, seasons: "8 sessons" ,anotherSeeText: "see season 8 now !", displayGeneralOption: displayGeneralInfoEx)

let movieExp6 = Movie(id: UUID().uuidString, name: "Black Mirror", thumbnailURL: URL(string: "https://picsum.photos/200/309")!,Category: ["suspend","tragety","comedy","romance","action"],rate: "TV-MA",year: 2019, seasons: "6 sessons" ,anotherSeeText: "see season 6 now !", displayGeneralOption: displayGeneralInfoEx)
//var num = 1
var movieArray : [Movie] = [movieExp,movieExp2,movieExp3,movieExp4,movieExp5,movieExp6]

var displayGeneralInfoEx = OrganizeSesson(episodename: "begining and Ending", description: "Dark is a German science fiction thriller television series co-created by Baran bo Odar and Jantje Friese. It ran for three seasons from 2017 to 2020. The story follows characters from the fictional village of Winden, Germany, as they pursue the truth in the aftermath of a child's disappearance.", episodenum: 1, sesson: 1)

var displayCustomInfoEx = OrganizeSesson(episodename: "Black Mirror", description: "Black Mirror is a British anthology television series created by Charlie Brooker. Individual episodes explore a diversity of genres, but most are set in near-future dystopias with science fiction technology—a type of speculative fiction.", episodenum: 4, sesson: 2)

extension String {
    func widthOfString(usingFont font : UIFont) -> CGFloat {
        let fontAttribute = [NSAttributedString.Key.font : font]
        let size = self.size(withAttributes: fontAttribute)
        return size.width
        
    }
}
