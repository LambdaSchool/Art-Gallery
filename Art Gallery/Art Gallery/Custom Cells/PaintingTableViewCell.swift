//
//  PaintingTableViewCell.swift
//  Art Gallery
//
//  Created by Stuart on 1/14/19.
//  Copyright © 2019 Stuart. All rights reserved.
//

import UIKit

protocol PaintingTableViewCellDelegate: class {
    func tappedLikeButton(on cell: PaintingTableViewCell)
}

class PaintingTableViewCell: UITableViewCell {
    
    // IBActions & Logic
    
    @IBAction func like(_ sender: UIButton) {
        delegate?.tappedLikeButton(on: self)
    }
    
    // IBOutlets & Properties
    
    weak var delegate: PaintingTableViewCellDelegate?
    
    @IBOutlet weak var paintingView: UIImageView!
}
