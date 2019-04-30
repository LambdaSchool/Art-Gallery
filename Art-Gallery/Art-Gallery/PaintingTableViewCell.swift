//
//  PaintingTableViewCell.swift
//  Art-Gallery
//
//  Created by Jeremy Taylor on 4/30/19.
//  Copyright © 2019 Bytes-Random L.L.C. All rights reserved.
//

import UIKit

class PaintingTableViewCell: UITableViewCell {
    @IBOutlet weak var portraitView: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    
    weak var delegate: PaintingTableViewCellDelegate?
    
    @IBAction func toggledAppreciation(_ sender: Any) {
        delegate?.tappedLikeButton(on: self)
    }
    
    
}
