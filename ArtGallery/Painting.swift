//
//  Painting.swift
//  ArtGallery
//
//  Created by Ilgar Ilyasov on 8/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class Painting {
    
    let image: UIImage
    var isLiked = false
    
    init(image: UIImage, isLiked: Bool){
        self.image = image
        self.isLiked = isLiked
    }
}
