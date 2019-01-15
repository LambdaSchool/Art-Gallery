//
//  PaintingController.swift
//  Art-Gallery
//
//  Created by Vijay Das on 1/14/19.
//  Copyright © 2019 Vijay Das. All rights reserved.
//

import Foundation
import UIKit


protocol PaintingTableViewCellDelegate: class {
    func tappedLikeButton(on cell: PaintingTableViewCell)
}

class PaintingController {
    
 
    private(set) var paintings: [Painting] = []
    
    init() {
        for index in 1...12 {
            let name: String = "Image\(index)"
            guard let image = UIImage(named: name)  else { continue }
            let painting = Painting(image: image, isLiked: false)
            paintings.append(painting)
        }
    }
    
    func numberOfPaintings() -> Int {
        return paintings.count
    }
    
    func painting(for indexPath: IndexPath) -> Painting {
        return paintings[indexPath.row]
    }
 


}


