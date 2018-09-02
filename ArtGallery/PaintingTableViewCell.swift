//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Welinkton on 9/1/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PaintingTableViewCell: UITableViewCell {
    
    func updateViews(){
        
        guard let painting = painting else {return}
        
        paintingImageView.image = painting.image
        
    }

    @IBOutlet weak var paintingImageView: UIImageView!
    @IBAction func touchIsLiked(_ sender: UIButton) {
    
    }

    
    var painting: Painting? {
        didSet {
            updateViews()
        }
    }
    
}
