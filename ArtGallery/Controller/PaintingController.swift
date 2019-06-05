//
//  PaintingController.swift
//  ArtGallery
//
//  Created by Jake Connerly on 6/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class PaintingController {
    var paintings: [Painting] = []
    
    func loadPaintingsFromAssets() {
        for index in 1...12 {
            let imageString = "Image" + "\(index)"
            let painting = Painting(image: UIImage(named: imageString)!)
            paintings.append(painting)
        }
    }
    
    func toggleIsLiked(for painting: Painting) {
        
    }
    
    init() {
        loadPaintingsFromAssets()
    }
}
