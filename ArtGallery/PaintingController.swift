//
//  PaintingController.swift
//  ArtGallery
//
//  Created by Alex Shillingford on 6/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class PaintingController {
    // MARK: Properties
    var paintings: [Painting] = []
    
    
    // MARK: Methods and Functions
    
    func loadPaintingsFromAssets() {
        for painting in 1...12 {
            // Creating paintingString variable to set up the string version of the name of each painting in assets. Creating unwrappedPainting to unwrap the optional that the UIImage(named: string) initializer returns. Creating newPainting constant of type Painting to store the unwrappedPainting in as the UIImage parameter and leaving liked as "false" for now (the default value).
            let paintingString = "image\(String(painting))"
            guard let unwrappedPainting = UIImage(named: paintingString) else { return }
            let newPainting = Painting(image: unwrappedPainting)
            
            paintings.append(newPainting)
        }
    }
    
    func toggleIsLiked(for painting: Painting) {
        
    }
    
    // MARK: Initializer
    init() {
        loadPaintingsFromAssets()
    }
}
