//
//  Painting.swift
//  ArtGallery
//
//  Created by Paul Yi on 1/14/19.
//  Copyright © 2019 Paul Yi. All rights reserved.
//

import UIKit

class Painting {
    let image: UIImage
    var isLiked: Bool = false
    
    init(image: UIImage) {
        self.image = image
    }
}
