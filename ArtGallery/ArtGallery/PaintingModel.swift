//
//  PaintingModel.swift
//  ArtGallery
//
//  Created by Jocelyn Stuart on 1/14/19.
//  Copyright © 2019 JS. All rights reserved.
//

import Foundation
import UIKit

class PaintingModel {
    
    func toggleIsLiked(for painting: Painting) {
        painting.isLiked = !painting.isLiked
    }
  
    func loadImages() {
        for n in 1...12 {
            let imageName = "image\(n)"
            if let imagePic = UIImage(named: imageName) {
                let painting = Painting(image: imagePic)
                paintings.append(painting)
            }
        }
    }
    
    
    
    var paintings: [Painting] = []
    
    init() {
        loadImages()
    }
    
    
}
