//
//  PaintingController.swift
//  ArtGallery
//
//  Created by Kat Milton on 6/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class PaintingController {
    
    init() {
        
    }
    var paintings: [Painting] = []
    
    
    //Function to loop through paintings and name them as strings.
    
    func loadPaintingFromAssets() {
//        for image in 1..<paintings.count {
//            let images = "Image\(image)"
//
//        }
        
    }
    
    func toggleIsLiked(for painting: Painting) {
        painting.isLiked.toggle()
    }
    
    
}
