//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Jason Modisett on 8/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PaintingTableViewCell: UITableViewCell {
    
    @IBAction func likeButtonTapped(_ sender: Any) {
        
    }
    
    func updateViews() {
        guard let painting = painting else { return }
        paintingImageView.image = painting.image
        likeButton.titleLabel?.text = painting.isLiked ? "UNLIKE" : "👍 LIKE"
    }
    
    var painting: Painting? { didSet { updateViews() }}

    @IBOutlet weak var paintingImageView: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    
}
