//
//  ImageURLModel.swift
//  TableViewInCollection
//
//  Created by UrataHiroki on 2021/09/03.
//

import Foundation

struct ImageURLModel{
    
    var catImageUrlArray = [URL]()
    var dogImageUrlArray = [URL]()
    var carImageUrlArray = [URL]()
    var seaImageUrlArray = [URL]()
    var sportsImageUrlArray = [URL]()
    
    init(catImageUrl:URL) {
        
        catImageUrlArray.append(catImageUrl)
    }
    
    init(dogImageUrl:URL) {
        
        dogImageUrlArray.append(dogImageUrl)
    }
    
    init(carImageUrl:URL) {
        
        carImageUrlArray.append(carImageUrl)
    }
    
    init(seaImageUrl:URL) {
        
        seaImageUrlArray.append(seaImageUrl)
    }
    
    init(sportsImageUrl:URL) {
        
        sportsImageUrlArray.append(sportsImageUrl)
    }
    
    
}
