//
//  PaintingTableViewCellDelegate.swift
//  ArtGallery
//
//  Created by Thomas Cacciatore on 4/24/19.
//  Copyright © 2019 Thomas Cacciatore. All rights reserved.
//

import UIKit

protocol PaintingTableViewCellDelegate: class {
    func tappedLikeButton(on cell: PaintingTableViewCell)
}
