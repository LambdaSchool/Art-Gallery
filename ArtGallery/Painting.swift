//
//  Painting.swift
//  
//
//  Created by Welinkton on 8/30/18.
//

import Foundation
import UIKit

class Painting {
    let image: UIImage?
    var isLiked: Bool = false
    
    init(image: UIImage, isLiked: Bool) {
        self.image = image
        self.isLiked = false
    }
}
