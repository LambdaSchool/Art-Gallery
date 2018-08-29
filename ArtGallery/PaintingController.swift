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
    
    private(set) var paintings: [Painting] = []
    
    func loadPaintingsFromAssets(_ image: UIImage!) {
        
        var image = Painting(image: image)
        var imageName: String
        
        for a in 1...12 {
            
            imageName = "image \(a)"
            image = Painting(image: UIImage(named: imageName)!)
            paintings.append(image)
        }
    }
    
    func toggleIsLiked(for painting: Painting) {
        
        if painting.isLiked == true {
            
            painting.isLiked = false
        } else if painting.isLiked == false {
            
            painting.isLiked = true
        }
    }
}
