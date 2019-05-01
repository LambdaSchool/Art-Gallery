//
//  PaintingController.swift
//  Art Gallery
//
//  Created by Stuart on 1/14/19.
//  Copyright © 2019 Stuart. All rights reserved.
//

import UIKit

class PaintingController {
    
    init() {
        loadAssets()
    }
    
    func loadAssets() {
        for index in 1...12 {
            guard let image = UIImage(named: "Image\(index)") else { return }
            paintings.append(Painting(image: image))
        }
    }
    
    func toggleIsLiked(for painting: Painting) {
        painting.isLiked = !painting.isLiked
    }
    
    // MARK: - Properties
    
    private(set) var paintings: [Painting] = []
}
