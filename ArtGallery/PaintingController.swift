//
//  PaintingController.swift
//  ArtGallery
//
//  Created by Rick Wolter on 8/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class PaintingController {
    
    ///CRUD for databases and model controllers this is usually the four functions -- Create-Read-Update-Delete
    
    
    init(){
        self.loadPaintingsFromAssets()
    }
    
    var paintings: [Painting] = []
    
    func loadPaintingsFromAssets(){
        for index in 1...12{
            let indexString = "Image\(index)"
            guard let paintingFromAsset = UIImage(named: indexString) else {return}
            let newPaintingObject = Painting(of: paintingFromAsset)
            paintings.append(newPaintingObject)
        }
    }
}
