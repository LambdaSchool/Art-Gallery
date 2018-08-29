//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Dillon McElhinney on 8/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PaintingTableViewCell: UITableViewCell {

    @IBOutlet weak var paintingImageView: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    
    var painting: Painting? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        guard let painting = painting else { return }
        paintingImageView.image = painting.image
        likeButton.setTitle(painting.isLiked ? "Unlike?" : "Like", for: .normal)
    }
    
    @IBAction func likePainting(_ sender: UIButton) {
    }
    
}
