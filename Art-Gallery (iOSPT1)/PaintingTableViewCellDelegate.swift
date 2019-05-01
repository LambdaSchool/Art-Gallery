//
//  PaintingTableViewCellDelegate.swift
//  Art-Gallery (iOSPT1)
//
//  Created by Dongwoo Pae on 4/30/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

import Foundation

protocol PaintingTableViewCellDelegate: class {
    func tappedLikeButton(on cell: PaintingTableViewCell)
}
