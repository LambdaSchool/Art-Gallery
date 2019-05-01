//
//  PainingModel.swift
//  ArtGallery
//
//  Created by Hayden Hastings on 4/24/19.
//  Copyright © 2019 Hayden Hastings. All rights reserved.
//

import Foundation
import UIKit

class PaintingModel: NSObject {
    
    func createImage(withImage image: UIImage) {
        let image = Painting(image: image)
        paintings.append(image)
    }
    
    weak var tableView: PaintingViewController?
    var paintings: [Painting] = []

}
