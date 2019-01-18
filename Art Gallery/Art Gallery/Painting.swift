//
//  Painting.swift
//  Art Gallery
//
//  Created by Moses Robinson on 1/14/19.
//  Copyright © 2019 Moses Robinson. All rights reserved.
//

import UIKit

struct Painting: Equatable {
    let image: UIImage
    var isLiked: Bool
    
    init(image: UIImage, isLiked: Bool = false) {
        (self.image, self.isLiked) = (image, isLiked)
    }
}
