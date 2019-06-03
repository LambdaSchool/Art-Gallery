//
//  PaintingController.swift
//  Art Gallery
//
//  Created by Nathan Hedgeman on 5/1/19.
//  Copyright © 2019 Nate Hedgeman. All rights reserved.
//

import Foundation
import UIKit

class PaintingController {
    var paintings: [Painting] = []
    
    init() {
        loadPaintingFromAssets()
    }
    
    //Get the images from the assests folder
    func loadPaintingFromAssets() {
        for i in 1...12 {
            let image: String = "Image \(i)"
            guard let UIImage = UIImage(named: image) else {return}
            let painting = Painting(image: UIImage)
            paintings.append(painting)
        }
    }
    
    // Does this painting attribute come from the let constant in loadPaintingFromAssets??
    // Does an IBAction need to be used for this function??
    func toggleIsLiked(painting: Painting) {
        painting.isLiked = !painting.isLiked
    }
}
