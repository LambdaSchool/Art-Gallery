//
//  PainingModel.swift
//  ArtGallery
//
//  Created by Hayden Hastings on 4/24/19.
//  Copyright © 2019 Hayden Hastings. All rights reserved.
//

import Foundation
import UIKit

struct Painting {
    let image: UIImage
    var isLiked: Bool
    
    init(image: UIImage, isLiked: Bool = false) {
        self.image = image
        self.isLiked = isLiked
    }
}
//comment for test commit

protocol PaintingTableViewCellDelegate: class {
    func tappedLikeButton(on cell: PaintingTableViewCell)
}

class PaintingModel: NSObject {
    
    
}

extension PaintingModel: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
}

extension PaintingModel: UITableViewDelegate {
    
}
