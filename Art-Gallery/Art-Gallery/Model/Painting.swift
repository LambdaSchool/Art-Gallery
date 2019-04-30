//
//  Painting.swift
//  Art-Gallery
//
//  Created by Jeremy Taylor on 4/30/19.
//  Copyright © 2019 Bytes-Random L.L.C. All rights reserved.
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
