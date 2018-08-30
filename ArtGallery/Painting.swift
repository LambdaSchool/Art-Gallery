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
    var isLinked: Bool = false
    
    init(imagePainting: UIImage, isLinked: Bool) {
        self.image = imagePainting
        self.isLinked = isLinked
    }
}
