//
//  PaintingTableViewCellDelegate.swift
//  ArtGallery
//
//  Created by Jeffrey Carpenter on 4/24/19.
//  Copyright © 2019 Jeffrey Carpenter. All rights reserved.
//

import Foundation

protocol PaintingTableViewCellDelegate: class {
    func tappedLikedButton(on cell: PaintingTableViewCell)
}
