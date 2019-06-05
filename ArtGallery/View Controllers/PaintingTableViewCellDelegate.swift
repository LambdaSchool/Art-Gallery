//
//  PaintingTableViewCellDelegate.swift
//  ArtGallery
//
//  Created by Welinkton on 9/3/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import UIKit

    
protocol PaintingTableViewCellDelegate: class {
    
    // does not return anything, no body , just makes gives the instructions
    func likeButtonWasTapped(on cell: PaintingTableViewCell)
    
}
