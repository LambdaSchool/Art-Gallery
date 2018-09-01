//
//  PaintingController.swift
//  
//
//  Created by Welinkton on 8/30/18.
//

import Foundation
import UIKit

class PaintingController {
    
    func loadPaintingsFromAssets(){
        for i in 1...12 {
            
            let nameOfPainting = "Image\(i)"
            
            guard let image = UIImage(named: nameOfPainting) else {return}
            
            let painting = Painting(image: image, isLiked: false)
            
            paintings.append(painting)

        }
    }


    func toggleIsLiked(for painting: Painting){
        painting.isLiked = (painting.isLiked!)
    }

    var paintings: [Painting] = []
    
}
