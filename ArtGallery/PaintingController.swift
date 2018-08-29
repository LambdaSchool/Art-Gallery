//
//  PaintingController.swift
//  ArtGallery
//
//  Created by Moin Uddin on 8/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class PaintingController {
    var paintings: [Painting] = []
    
    init(){
        loadPaintingsFromAssets()
    }
    
    func loadPaintingsFromAssets(){
        for i in 1...12 {
            let image : String = "Image\(i)"
            guard let UIImage = UIImage(named: image) else { return }
            let painting = Painting(image: UIImage)
            paintings.append(painting)
        }
    }
    
    func toggleIsLiked(painting: Painting){
        painting.isLiked = !painting.isLiked
    }
}
