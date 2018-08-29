//
//  Painting.swift
//  ArtGallery
//
//  Created by Moin Uddin on 8/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class Painting {
    let image: UIImage
    var isLiked: Bool
    
    init(image: UIImage, isLiked: Bool = false){
        self.isLiked = isLiked
        self.image = image
    }
}
