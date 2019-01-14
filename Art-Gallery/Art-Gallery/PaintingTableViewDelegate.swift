//
//  PaintingTableViewDelegate.swift
//  Art-Gallery
//
//  Created by Vijay Das on 1/14/19.
//  Copyright © 2019 Vijay Das. All rights reserved.
//

import Foundation

protocol PaintingTableViewCellDelegate: class {
    func likeButton(on cell: PaintingTableViewCell)
    
}

