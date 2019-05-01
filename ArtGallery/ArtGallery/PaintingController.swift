//
//  PaintingController.swift
//  ArtGallery
//
//  Created by Jordan Davis on 5/1/19.
//  Copyright © 2019 Jordan Davis. All rights reserved.
//

import UIKit

class PaintingController {
    
    func loadPaintingsFromAssets() {
        for n in 1...12 {
            
            let imageName = "Image\(n)"
            
            guard let image = UIImage(named: imageName) else { continue }
            
            let painting = Painting(image: image, isLiked: false)
            
            paintings.append(painting)
        }
    }
    
    func toggleIsLiked(for painting: Painting) {
        
    }
    
    
    //MARK: -properties
    
    var paintings: [Painting] = []
}
