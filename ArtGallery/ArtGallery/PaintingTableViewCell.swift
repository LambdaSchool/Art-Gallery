//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Paul Yi on 1/14/19.
//  Copyright © 2019 Paul Yi. All rights reserved.
//

import UIKit

class PaintingTableViewCell: UITableViewCell {
    @IBOutlet weak var portraitView: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    
    weak var delegate: PaintingTableViewCellDelegate?
    
    @IBAction func toggledAppreciation(_ sender: Any) {
        delegate?.likeButtonWasTapped(on: self)
    }
    
}
