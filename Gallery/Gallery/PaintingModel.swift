//
//  PaintingModel.swift
//  Gallery
//
//  Created by Nelson Gonzalez on 1/14/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import Foundation
import UIKit

class PaintingModel: NSObject {
    
    weak var tableView: PaintingViewController?
    var paintings: [Painting] = []

    func toggleIsLiked(for painting: Painting){
       var painting = painting
        painting.isLiked = !painting.isLiked
print(painting.isLiked)
    }
    
}
