//
//  Painting.swift
//  
//
//  Created by Welinkton on 8/30/18.
//

import Foundation
import UIKit

class Painting {
    let image: UIImage
    var isLiked: Bool
    
    // set init bool to value (false)
    init(image: UIImage, isLiked: Bool = false) {
        self.image = image
        self.isLiked = false
    }
}
