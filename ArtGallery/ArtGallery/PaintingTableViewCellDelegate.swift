//
//  PaintingTableViewCellDelegate.swift
//  ArtGallery
//
//  Created by Jocelyn Stuart on 1/14/19.
//  Copyright © 2019 JS. All rights reserved.
//

import Foundation

protocol PaintingTableViewCellDelegate: class {
    func tappedLikeButton(on cell: PaintingTableViewCell)
}
