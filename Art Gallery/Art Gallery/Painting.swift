//
//  Painting.swift
//  Art Gallery
//
//  Created by Nathanael Youngren on 1/14/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

import Foundation
import UIKit

struct Painting {
    let image: UIImage
    var isLike: Bool
    
    init(image: UIImage, isLike: Bool = false) {
        self.image = image
        self.isLike = isLike
    }
}
