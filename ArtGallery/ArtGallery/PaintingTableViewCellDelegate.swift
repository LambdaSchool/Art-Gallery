//
//  PaintingTableViewCellDelegate.swift
//  ArtGallery
//
//  Created by Paul Yi on 1/14/19.
//  Copyright © 2019 Paul Yi. All rights reserved.
//

import Foundation

protocol PaintingTableViewCellDelegate: class {
    func tappedLikeButton(on cell: PaintingTableViewCell)
}
