//
//  PainingModel.swift
//  ArtGallery
//
//  Created by Hayden Hastings on 4/24/19.
//  Copyright © 2019 Hayden Hastings. All rights reserved.
//

import Foundation
import UIKit

class PaintingModel {
    
    init() {
        loadPainting()
    }
    
//    func createImage(withImage image: UIImage) {
//        let image = Painting(image: image)
//        paintings.append(image)
//    }
    
    func loadPainting() {
        for n in 1...12 {
            let imageName = "Image\(n)"
            
            guard let image = UIImage(named: imageName) else { continue }
            let painting = Painting(image: image)
            
            paintings.append(painting)
        }
    }
    
    weak var tableView: PaintingViewController?
    var paintings: [Painting] = []

}
