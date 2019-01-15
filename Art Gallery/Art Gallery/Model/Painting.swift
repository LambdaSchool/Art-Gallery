//
//  Painting.swift
//  Art Gallery
//
//  Created by Nathanael Youngren on 1/14/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

import Foundation
import UIKit

class Painting {
    let image: UIImage
    var isLike: Bool
    let information: String
    
    init(image: UIImage, isLike: Bool = false, information: String) {
        self.image = image
        self.isLike = isLike
        self.information = information
    }
}
