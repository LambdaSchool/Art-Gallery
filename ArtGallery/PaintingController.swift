//
//  PaintingController.swift
//  
//
//  Created by Welinkton on 8/30/18.
//

import Foundation
import UIKit

class PaintingController {
    var paintings:[Painting] = []

    func loadPaintingsFromAssets(){
        for i in 1...12 {
            
            let nameOfPainting = "Image\(i)"
            
            guard let image = UIImage(named: nameOfPainting) else {return}
            
            let painting = Painting(imagePainting: image, isLinked: false)
            
            paintings.append(painting)
            
            
        }
    
    }


    func toggleIsLiked(for painting: Painting){
        painting.isLinked = !(painting.isLinked)
    }

    
}
