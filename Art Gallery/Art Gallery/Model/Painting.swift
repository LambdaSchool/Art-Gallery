//
//  Painting.swift
//  Art Gallery
//
//  Created by Stuart on 1/14/19.
//  Copyright © 2019 Stuart. All rights reserved.
//

import UIKit

struct Painting {
    let image: UIImage
    var isLiked: Bool
    
    init(image: UIImage, isLiked: Bool = false) {
        self.image = image
        self.isLiked = isLiked
    }
}
