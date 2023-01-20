//
//  Episods.swift
//  CloneNetflix2
//
//  Created by Bashayer on 26/12/2022.
//

import Foundation

struct Episods : Identifiable {
    var id = UUID().uuidString
    var name : String
    var urlImageString : String
    var length : Int
    var description : String
    
    var imageUrl : URL {
        return URL(string: urlImageString)!
    }
}
