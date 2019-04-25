//
//  PaintingModel.swift
//  ArtGallery
//
//  Created by Jeffrey Carpenter on 4/24/19.
//  Copyright © 2019 Jeffrey Carpenter. All rights reserved.
//

import Foundation
import UIKit

class PaintingModel: NSObject {
    
    weak var tableView: UITableView?
    var paintings: [Painting] = []

    override init() {
        
        for number in 1...12 {
            
            // Create new painting and append to array
            guard let paintingName = UIImage(named: "Image\(number)") else { return }
            let painting = Painting(image: paintingName, isLiked: false)
            paintings.append(painting)
        }
        
    }
    
}
