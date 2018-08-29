//
//  Painting.swift
//  ArtGallery
//
//  Created by Dillon McElhinney on 8/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class Painting: Equatable {
    let image: UIImage
    var isLiked = false
    
    init (image: UIImage) {
        self.image = image
    }
}
