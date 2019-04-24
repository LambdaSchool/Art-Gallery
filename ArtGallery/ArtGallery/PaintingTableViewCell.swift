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
    
    var painting: Painting? {
        didSet {
            updateView()
        }
    }
    
    weak var delegate: PaintingTableViewCellDelegate?
    
    @IBAction func toggledAppreciation(_ sender: UIButton) {
        delegate?.tappedLikedButton(on: self)
    }
    
    private func updateView() {
        
        guard let painting = painting else { return }
        
        portraitView.image = painting.image
        
        if painting.isLiked {
            likeButton.setTitle("Unlike", for: .normal)
        } else {
            likeButton.setTitle("Like", for: .normal)
        }
        
    }
    
}
