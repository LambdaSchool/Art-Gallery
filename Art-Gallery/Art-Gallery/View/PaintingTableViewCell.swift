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
    
    override func awakeFromNib() {
        portraitView.layer.cornerRadius = 10.0
        portraitView.clipsToBounds = true
        
        portraitView.layer.borderColor = UIColor.lightGray.cgColor
        portraitView.layer.borderWidth = 1.0
    }
    
    @IBAction func toggledAppreciation(_ sender: Any) {
        delegate?.tappedLikeButton(on: self)
    }
    
    
}
