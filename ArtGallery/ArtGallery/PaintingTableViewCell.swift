//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Paul Yi on 1/14/19.
//  Copyright © 2019 Paul Yi. All rights reserved.
//

import UIKit

protocol PaintingTableViewCellDelegate: class {
    func likeButtonWasTapped(on cell: PaintingTableViewCell)
}

class PaintingTableViewCell: UITableViewCell {
    @IBOutlet weak var portraitView: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    
    weak var delegate: PaintingTableViewCellDelegate?
    
    var painting: Painting? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let painting = painting else { return }
        
        if painting.isLiked == false {
            likeButton.setTitle("Like", for: .normal)
        } else {
            likeButton.setTitle("Unlike", for: .normal)
        }
        
        portraitView.image = painting.image
    }
    
    @IBAction func toggledAppreciation(_ sender: Any) {
        delegate?.likeButtonWasTapped(on: self)
    }
    
    
    
}
