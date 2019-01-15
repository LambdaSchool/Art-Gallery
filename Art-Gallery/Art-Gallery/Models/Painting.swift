//
//  Painting.swift
//  Art-Gallery
//
//  Created by Vijay Das on 1/14/19.
//  Copyright © 2019 Vijay Das. All rights reserved.
//

import Foundation
import UIKit

class Painting {
    var image: UIImage
    var isLiked: Bool
    
    
    init(image: UIImage, isLiked: Bool = false) {
        self.image = image
        self.isLiked = isLiked
    }
}
