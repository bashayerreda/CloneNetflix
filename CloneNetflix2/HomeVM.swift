//
//  HomeVM.swift
//  CloneNetflix2
//
//  Created by Bashayer on 25/12/2022.
//

import Foundation
class HomeVm : ObservableObject {
  var moviesList : [String : [Movie]] = [:]
    public var computedCategory : [String]{
        return moviesList.keys.map({String($0)})
     }
    func returnEachMovieFromItsCategory(category : String) -> [Movie]{
        return moviesList[category] ?? []
    }
    init(){
        setupFirstRow()
      
    }
    func setupFirstRow()  {
        moviesList["Trending Now"] = movieArray
        moviesList["stand-up comedy"] = movieArray.shuffled()
        moviesList["New Reales"] = movieArray.shuffled()
        moviesList["Watch it again"] = movieArray.shuffled()
   
    }
}
