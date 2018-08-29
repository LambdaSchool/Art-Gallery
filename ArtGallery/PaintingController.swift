//
//  PaintingController.swift
//  ArtGallery
//
//  Created by Jason Modisett on 8/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class PaintingController {
    
    init() {
        loadPaintingsFromAssets()
    }
    
    func loadPaintingsFromAssets() {
        for i in 1...12 {
            guard let image = UIImage(named: "Image\(i)") else { return }
            paintings.append(Painting(image: image))
        }
    }
    
    func toggleIsLiked(for painting: Painting) {
        painting.isLiked = !painting.isLiked
    }
    
    var paintings: [Painting] = []
    
}
