//
//  Painting.swift
//  ArtGallery
//
//  Created by Alex Shillingford on 6/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class Painting {
    // MARK: Properties
    let image: UIImage
    
    var isLiked: Bool
    
    
    
    // MARK: Initializer
    init(image: UIImage, isLiked: Bool = false) {
        self.image = image
        self.isLiked = isLiked
    }
    
}
