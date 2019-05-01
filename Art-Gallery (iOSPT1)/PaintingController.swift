//
//  PaintingController.swift
//  Art-Gallery (iOSPT1)
//
//  Created by Dongwoo Pae on 4/30/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

import Foundation
import UIKit

class PaintingController {

    var paintings : [Painting] = []
    
    init() {loadImage()}
    
    func loadImage() {
    for i in 1...12 {
        let paintingName = "Image" + String(i)
        guard let paintingImage = UIImage(named: paintingName) else {return}
            let painting = Painting(image:paintingImage, isLiked: false)
        paintings.append(painting)
            }
        }
 
    func toggleIsLiked(for painting: Painting) {
        painting.isLiked = !painting.isLiked
    }
}

