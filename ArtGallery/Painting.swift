//
//  Painting.swift
//  ArtGallery
//
//  Created by Dillon McElhinney on 8/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class Painting: Equatable {
    static func == (lhs: Painting, rhs: Painting) -> Bool {
        if lhs.image == rhs.image && lhs.isLiked == rhs.isLiked {
            return true
        }
        return false
    }
    
    let image: UIImage
    var isLiked = false
    
    var ratio: CGFloat {
        get {
            return image.size.height / image.size.width
        }
    }
    
    init (image: UIImage) {
        self.image = image
    }
}
