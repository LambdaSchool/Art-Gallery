//
//  PaintingTableViewCell.swift
//  Art Gallery
//
//  Created by Nathan Hedgeman on 5/1/19.
//  Copyright © 2019 Nate Hedgeman. All rights reserved.
//

import UIKit

class PaintingTableViewCell: UITableViewCell {

    @IBOutlet weak var paintingImage: UIImageView!
    
    @IBOutlet weak var isLikedButton: UIButton!
    
    @IBAction func isLikedButtonTapped(_ sender: Any) {
    }
}
