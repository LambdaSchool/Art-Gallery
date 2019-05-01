//
//  PaintingModel.swift
//  Art Gallery
//
//  Created by Michael Stoffer on 4/30/19.
//  Copyright © 2019 Michael Stoffer. All rights reserved.
//

import UIKit
import Foundation

class PaintingModel: NSObject {

    weak var paintingTableView: PaintingViewController?
    var paintings: [Painting] = []
    
    override init() {
        for index in 1...12 {
            guard let image = UIImage(named: "Image\(index)") else { return }
            let painting = Painting(image: image, isLiked: false)
            paintings.append(painting)
        }
    }
    
    func toggledAppreciation(at indexPath: IndexPath) {
        self.paintings[indexPath.row].isLiked.toggle()
    }
}
