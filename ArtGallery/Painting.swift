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
    var isLiked: Bool = false
    
    init(imagePainting: UIImage, isLiked: Bool) {
        self.image = imagePainting
        self.isLiked = false
    }
}
