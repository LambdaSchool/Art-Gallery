//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Jordan Davis on 5/1/19.
//  Copyright © 2019 Jordan Davis. All rights reserved.
//

import UIKit

class PaintingTableViewCell: UITableViewCell {

    
    
    
    
    
    
    
    
    @IBOutlet var paintingImageView: UIImageView!
    @IBAction func likeButtonPressed(_ sender: Any) {
    }
    
    
    //MARk: -Properties
    var painting: Painting? {
        didSet {
            updateViews()
        }
    }
}
