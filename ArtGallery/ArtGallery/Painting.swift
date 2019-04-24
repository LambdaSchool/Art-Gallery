//
//  Painting.swift
//  ArtGallery
//
//  Created by Jeffrey Carpenter on 4/24/19.
//  Copyright © 2019 Jeffrey Carpenter. All rights reserved.
//

import Foundation
import UIKit

struct Painting {
    
    let image: UIImage
    var isLiked: Bool
    
    init(image: UIImage, isLiked: Bool = false) {
        self.image = image
        self.isLiked = isLiked
    }
    
}
