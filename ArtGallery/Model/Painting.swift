//
//  Painting.swift
//  ArtGallery
//
//  Created by Jake Connerly on 6/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class Painting {
    var image: UIImage
    var isLiked: Bool = false
    
    init(image: UIImage) {
        self.image = image
        
    }
}
