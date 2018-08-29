//
//  PaintingController.swift
//  ArtGallery
//
//  Created by Daniela Parra on 8/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class PaintingController {
    var paintings: [Painting] = []
    
    func loadPaintingsFromAssets() {
        for imageNumber in 1...12 {
            let imageName = "Image\(imageNumber)"
            guard let image = UIImage(named: imageName) else {return}
            let painting = Painting(image: image)
            paintings.append(painting)
        }
    }
    
    func toggleIsLiked (for painting: Painting) {
        let newStatus = !painting.isLiked
        painting.isLiked = newStatus
    }
    
    init() {
        loadPaintingsFromAssets()
    }
}
