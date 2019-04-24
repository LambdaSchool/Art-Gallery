//
//  PaintingTableViewCellDelegate.swift
//  ArtGallery
//
//  Created by Taylor Lyles on 4/24/19.
//  Copyright © 2019 Christopher Aronson. All rights reserved.
//

import UIKit

protocol PaintingTableViewCellDelegate: class {
    func tappedLikeButton(on cell: PaintingTableViewCell)
}

