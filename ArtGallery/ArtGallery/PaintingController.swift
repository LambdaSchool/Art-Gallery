//
//  PaintingController.swift
//  ArtGallery
//
//  Created by Paul Yi on 1/14/19.
//  Copyright © 2019 Paul Yi. All rights reserved.
//

import UIKit

class PaintingController {
    
    private(set) var paintings: [Painting] = []
    
    func loadPaintingFromAssets() {
        for number in 1...12 {
            let string = "Image\(number)"
            guard let image = UIImage(named: string) else { continue }
            let painting = Painting(image: image)
            paintings.append(painting)
        }
    }
    
    func toggleIsLiked(for painting: Painting) {
        if painting.isLiked == false {
            painting.isLiked = true
        } else {
            painting.isLiked = false
        }
    }
    
    init() {
        loadPaintingFromAssets()
    }
}
