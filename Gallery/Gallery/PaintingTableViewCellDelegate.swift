//
//  PaintingTableViewCellDelegate.swift
//  Gallery
//
//  Created by Nelson Gonzalez on 1/14/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import Foundation

protocol PaintingTableViewCellDelegate: class {
    func tappedLikeButton(on cell: PaintingTableViewCell)
}
