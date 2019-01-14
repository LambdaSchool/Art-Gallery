//
//  Painting.swift
//  Gallery
//
//  Created by Nelson Gonzalez on 1/14/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import Foundation
import UIKit

class Painting {
    var image: UIImage?
    var isLiked: Bool
    
    init(image: UIImage?, isLiked: Bool = false){
        self.image = image
        self.isLiked = isLiked
    }
}
