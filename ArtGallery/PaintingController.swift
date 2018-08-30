//
//  PaintingController.swift
//  ArtGallery
//
//  Created by Ilgar Ilyasov on 8/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class PaintingController {
    
    var paintings: [Painting] = []
    
    func loadPaintingsFromAssets(){
        
        for index in 1...12 {
            
            let imageName = "image\(index)"
            guard let newImage = UIImage(named: imageName ) else { return }
            let newPainting = Painting(image: newImage)
            paintings.append(newPainting)
        }
    }
    
    func toggleIsLiked(for painting: Painting) {
        
        painting.isLiked = !painting.isLiked
    }
}
