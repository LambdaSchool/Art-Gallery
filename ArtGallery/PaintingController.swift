//
//  PaintingController.swift
//  ArtGallery
//
//  Created by Sean Hendrix on 9/28/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class PaintingController {
    var paintings: [Painting] = []
    
    
    func loadPaintingsFromAssets() {
        for _ in (1...12){
            UIImage(named: String)
            
            var newPainting: UIImage
            paintings.append(newPainting)
            return UIImage?
        }
        
    }
    
    
    func toggleIsLiked(for painting: Painting) {
        
        if liked {
            liked = false
        } else {
            liked = true
        }
    }
    
    loadPaintingsFromAssets()
    
    toggleIsLiked()
    
    
}
