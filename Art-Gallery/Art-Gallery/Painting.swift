//
//  Painting.swift
//  Art-Gallery
//
//  Created by Angel Buenrostro on 1/14/19.
//  Copyright © 2019 Angel Buenrostro. All rights reserved.
//

import Foundation
import UIKit

struct Painting {
    let image : UIImage
    var isLiked : Bool
    
    init(image : UIImage, isLiked : Bool = false) {
        self.image = image
        self.isLiked = isLiked
    }
}
