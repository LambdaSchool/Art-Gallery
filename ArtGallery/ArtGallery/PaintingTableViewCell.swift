//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Jocelyn Stuart on 1/14/19.
//  Copyright © 2019 JS. All rights reserved.
//

import UIKit

class PaintingTableViewCell: UITableViewCell {
    
    
    @IBAction func toggledAppreciation(_ sender: UIButton) {
        delegate?.tappedLikeButton(on: self)
    }
    
    @IBOutlet weak var portraitView: UIImageView!
    
    @IBOutlet weak var likeButton: UIButton!
    
    weak var delegate: PaintingTableViewCellDelegate?
    
    private func updateViews() {
        guard let painting = painting else { return }
        
        portraitView.image = painting.image
    
        let likeButtonTitle = painting.isLiked ? "Unlike" : "Like"
        likeButton.setTitle(likeButtonTitle, for: .normal)
    }
    
    var painting: Painting? {
        didSet { //property observer, observes when note gets set and then does something
            updateViews()
        }
        
        
    }
  
}
