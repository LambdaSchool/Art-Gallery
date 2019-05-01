//
//  PaintingModel.swift
//  Gallery
//
//  Created by Nelson Gonzalez on 1/14/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import Foundation
import UIKit

class PaintingModel {
    
    init() {
        loadPaintingsFromAssets()
    }
    
    weak var tableView: PaintingViewController?
    private(set) var paintings: [Painting] = []

//    func toggleIsLiked(for painting: Painting){
//        guard let index = paintings.index(of: painting) else { return }
//        paintings[index].isLiked = !paintings[index].isLiked
//    }
    
    func toggleIsLiked(on index: Int) {
        paintings[index].isLiked = !paintings[index].isLiked
    }
    
    func loadPaintingsFromAssets(){
        for index in 1...12 {
            let imageName = "Image\(index)"
            guard let image = UIImage(named: imageName) else {return}
            let paiting = Painting(image: image)
            paintings.append(paiting)
        }
    }
    
}
