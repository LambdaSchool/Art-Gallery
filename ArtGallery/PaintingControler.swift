//
//  PaintingControler.swift
//  ArtGallery
//
//  Created by Kennon Keys Ward on 6/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class PaintingControler {
    var paintings: [Painting]
    
    init(paintings: [Painting] = []) {
        self.paintings = paintings
        loadPaintingsFromAssets()
    }
    
    // method to generat pics
    func loadPaintingsFromAssets() {
        for pic in 1...12 {
            if let image = UIImage(named: "Image \(pic)") {
                paintings.append(Painting(image: image))
            }
        }
    }
    
    
    // method to check if pic is liked
    func toggleIsLiked(for painting: Painting) -> <#return type#> {
        <#function body#>
    }
    
}
