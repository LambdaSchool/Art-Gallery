//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Jeffrey Carpenter on 4/24/19.
//  Copyright © 2019 Jeffrey Carpenter. All rights reserved.
//

import UIKit

class PaintingTableViewCell: UITableViewCell {

    @IBOutlet weak var portraitView: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    
    weak var delegate: PaintingTableViewCellDelegate?
    
    @IBAction func toggledAppreciation(_ sender: UIButton) {
        #warning("Set up like toggle")
    }
    
}
