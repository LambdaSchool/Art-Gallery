//
//  PaintingController.swift
//  ArtGallery
//
//  Created by Welinkton on 9/2/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class PaintingController {
    
    // initialize function
    
    init(){
        self.loadPaintingsFromAssets()
    }
    
    func loadPaintingsFromAssets(){
        
        for index in 1...12 {
            
            let paintingName = "Image\(index)"
            
            guard let image = UIImage(named: paintingName) else {return}
            
            let painting = Painting(image: image, isLiked: false)
            
            paintings.append(painting)
        }
    }
    
    func toggleIsLiked(painting: Painting){
        
        painting.isLiked = !painting.isLiked
        
    }
    
    
    var paintings: [Painting] = []
    
}
