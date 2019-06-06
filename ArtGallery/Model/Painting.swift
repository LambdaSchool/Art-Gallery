//
//  Painting.swift
//  ArtGallery
//
//  Created by Kat Milton on 6/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit

// Creating painting class and initializing properties.
class Painting {
    
    let image: UIImage
    var isLiked: Bool
    
    init(image: UIImage, isLiked: Bool = false) {
        self.image = image
        self.isLiked = isLiked
    }
}
