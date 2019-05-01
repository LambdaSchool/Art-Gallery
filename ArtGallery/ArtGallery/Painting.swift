//
//  Painting.swift
//  ArtGallery
//
//  Created by Jordan Davis on 5/1/19.
//  Copyright © 2019 Jordan Davis. All rights reserved.
//

import UIKit

class Painting {
    
    let image: UIImage?
    var isLiked: Bool
    
    init(image: UIImage, isLiked: Bool) {
        self.image = image
        self.isLiked = false
    }
}
