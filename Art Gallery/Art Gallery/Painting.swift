//
//  Painting.swift
//  Art Gallery
//
//  Created by Cameron Dunn on 1/14/19.
//  Copyright © 2019 Cameron Dunn. All rights reserved.
//

import Foundation
import UIKit

protocol PaintingTableViewCellDelegate: class {
    func tappedLikeButton(on cell: PaintingTableViewCell)
}

struct Painting{
    let image : UIImage
    let isLiked : Bool = false
}
