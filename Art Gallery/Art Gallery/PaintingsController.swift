//
//  PaintingsController.swift
//  Art Gallery
//
//  Created by Nathanael Youngren on 1/14/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

import Foundation
import UIKit

class PaintingsController {
    
    private(set) var images: [Painting] = []
    
    func loadImages() {
        for n in 1...12 {
            let imageName = "Image\(n)"
            let imageToLoad = UIImage(named: imageName)
            let imageAsPainting = Painting(image: imageToLoad!)
            
            images.append(imageAsPainting)
        }
    }
    
    init() {
        loadImages()
    }
    
}
