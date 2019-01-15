//
//  PaintingTableViewCell.swift
//  Art-Gallery
//
//  Created by Angel Buenrostro on 1/14/19.
//  Copyright © 2019 Angel Buenrostro. All rights reserved.
//

import Foundation
import UIKit

class PaintingTableViewCell: UITableViewCell, PaintingTableViewCellDelegate{
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        
        likeButton.titleLabel?.text = "Liked"
    }
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var portraitView: UIImageView!
    @IBAction func toggledAppreciation(_ sender: UIButton) {
        delegate?.tappedLikeButton(on: self)
    }
    
    
    weak var delegate : PaintingTableViewCellDelegate?
}
