//
//  Painting.swift
//  ArtGallery
//
//  Created by Dustin Koch on 1/14/19.
//  Copyright © 2019 Rabbit Hole Fashion. All rights reserved.
//

import UIKit


//Set up basic instance for a painting (replace with correct var type)


struct Painting {
    var isLiked: Bool
    let image: UIImage
    
    init(isLiked: Bool = false, image: UIImage) {
        
        self.isLiked = isLiked
        self.image = image
        
    }
    
}
