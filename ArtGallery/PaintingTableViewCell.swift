//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Farhan on 8/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PaintingTableViewCell: UITableViewCell {

    @IBOutlet weak var paintingImage: UIImageView!
    
    @IBOutlet weak var likeButton: UIButton!
    
    var painting: Painting?{
        didSet {updateViews()}
    }
    
    func updateViews(){
        
        guard let painting = painting else {return}
        
        paintingImage.image = painting.image
        if painting.isLiked {
            likeButton.titleLabel = "💔 Unlike"
        } else {
            likeButton.titleLabel = "❤️ Like"
        }
        
    }
    
    @IBAction func likeButtonPressed(_ sender: Any) {
        
    }
}
