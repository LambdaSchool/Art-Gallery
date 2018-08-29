//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Moin Uddin on 8/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PaintingTableViewCell: UITableViewCell {
    
    func updateViews(){
        guard let painting = painting else { return }
        painting.isLiked ? likeButton.setTitle("Unlike", for: .normal) : likeButton.setTitle("Like", for: .normal)
    }
    
    @IBAction func likeButtonTapped(_ sender: Any) {
    }
    
    @IBOutlet weak var paintingImage: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    
    var painting: Painting? {
        didSet {
            updateViews()
        }
    }
}
