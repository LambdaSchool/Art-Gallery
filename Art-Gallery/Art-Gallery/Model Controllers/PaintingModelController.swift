//
//  PaintingModelController.swift
//  Art-Gallery
//
//  Created by Vijay Das on 1/21/19.
//  Copyright © 2019 Vijay Das. All rights reserved.
//

import Foundation
import UIKit

// will implement delegate protocol here but where does it belong?

protocol PaintingTableViewCellDelegate: class {
    func tappedLikeButton(on cell: PaintingTableViewCell)
}



class PaintingModelController {
    
    private(set) var paintings: [Painting] = []
    
    // need images
    
    init() {
        for index in 1...12 {
            let name: String = "Image\(index)"
            guard let image = UIImage(named: name) else { return }
            let painting = Painting(image: image, isLiked: false)
            paintings.append(painting)
//            print("im here at loading image function")
        }
    }
    
    // need methods for number of paintings, and painting at
    func numberOfPaintings() -> Int {
        return paintings.count
    }
    
    
    func painting(for indexPath: IndexPath) -> Painting {
        return paintings[indexPath.row]
    }
    
    func toggleIsLiked(at indexPath: IndexPath) {
        paintings[indexPath.row].isLiked.toggle()
    }
    
    
    
    

    
}
