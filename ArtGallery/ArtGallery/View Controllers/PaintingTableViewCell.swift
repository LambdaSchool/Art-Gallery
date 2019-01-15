//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Dustin Koch on 1/14/19.
//  Copyright © 2019 Rabbit Hole Fashion. All rights reserved.
//

import UIKit

class PaintingTableViewCell: UITableViewCell {
    
    weak var delegate: PaintingTableViewCellDelegate?
    
    @IBOutlet weak var paintingImage: UIImageView!
    @IBAction func likeImageButton(_ sender: Any) {
        
        
        
        delegate?.tappedLikeButton(on: self)
        
    }
        
    @IBOutlet weak var button: UIButton!
    
    
}
