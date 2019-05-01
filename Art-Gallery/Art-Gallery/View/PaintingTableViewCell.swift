//
//  PaintingTableViewCell.swift
//  Art-Gallery
//
//  Created by Vijay Das on 1/14/19.
//  Copyright © 2019 Vijay Das. All rights reserved.
//

import UIKit


class PaintingTableViewCell: UITableViewCell {
    
//    static let reuseIdentifier = "PaintingCell"
    
    @IBOutlet weak var paintingImageView: UIImageView!
   
    @IBOutlet weak var likeButton: UIButton!
    
    @IBAction func tappedLikeButton(_ sender: UIButton) {
        delegate?.tappedLikeButton(on: self)
        
    }
    
    weak var delegate: PaintingTableViewCellDelegate?
    
}
