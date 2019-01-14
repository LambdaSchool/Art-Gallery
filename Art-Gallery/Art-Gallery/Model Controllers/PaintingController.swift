//
//  PaintingController.swift
//  Art-Gallery
//
//  Created by Vijay Das on 1/14/19.
//  Copyright © 2019 Vijay Das. All rights reserved.
//

import Foundation
import UIKit

class PaintingController {

    private(set) var paintings: [Painting] = []
    
    
    private init() {
        for index in 1...12 {
            let name: String = "Image\(index)"
            guard let image = UIImage(named: name)  else { continue }
            let painting = Painting(image: image, isLiked: false)
            paintings.append(painting)
        }
    }
    
    // need functions here for:
    // count (number of paintings)
    // paintat
    
    
    func numberOfPaintings() -> Int {
        return paintings.count
    }
    



}


