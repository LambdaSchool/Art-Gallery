//
//  PaintingTableViewCellDelegate.swift
//  ArtGallery
//
//  Created by Dustin Koch on 1/14/19.
//  Copyright © 2019 Rabbit Hole Fashion. All rights reserved.
//

import Foundation
import UIKit


// A custom protocol to communcate between cell and model

protocol PaintingTableViewCellDelegate: class {
    func tappedLikeButton(on cell: PaintingTableViewCell)
}
