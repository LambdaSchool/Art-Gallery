//
//  Painting.swift
//  Art Gallery
//
//  Created by Nathan Hedgeman on 4/30/19.
//  Copyright © 2019 Nate Hedgeman. All rights reserved.
//

import Foundation
import UIKit

class Painting {
    let image: UIImage
    var isLiked : Bool
    
    init(image: UIImage, isLiked: Bool = false) {
        self.image = image
        self.isLiked = isLiked
    }
}
