//
//  PaintingController.swift
//  ArtGallery
//
//  Created by Farhan on 8/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class PaintingController {
    
    private(set) var paintings: [Painting] = []
    
    func loadPaintingsFromAssets (){
        
        for x in 1...12 {
            
            let imageName = "Image \(x)"
            
            guard let newimage = UIImage(named: imageName) else {return}
            
            let painting = Painting(image: newimage, isLiked: false)
            
            paintings.append(painting)
        }
    }
    
    init() {
        loadPaintingsFromAssets()
    }
    
    func toggleIsLiked (for painting: Painting){
        painting.isLiked = !(painting.isLiked)
    }
    
}
