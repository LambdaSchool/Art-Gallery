//
//  PaintingModelController.swift
//  Art-Gallery
//
//  Created by Vijay Das on 1/21/19.
//  Copyright © 2019 Vijay Das. All rights reserved.
//

import Foundation
import UIKit

// will implement delelgate protocol here but where does it belong?

protocol PaintingTableViewCellDelegate: class {
    
}


class PaintingModelController {
    
    private(set) var paintings: [Painting] = []
    
    // need images
    
    init() {
        for index in 1...12 {
            let name: String = "Image\(index)"
            guard let image = UIImage(named: name) else { return }
            let painting = Painting(image: image, isLiked: false)
            paintings.append(painting)
        }
    }
    
    // need methods for number of paintings, and painting at
    
    func numberOfPaintings() -> Int {
        return paintings.count
    }
    
    
    
    
    

    
}
