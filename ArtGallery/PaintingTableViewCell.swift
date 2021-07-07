//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Daniela Parra on 8/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

protocol PaintingTableViewCellDelegate: class {
    
    func likeButtonWasTapped(on cell: PaintingTableViewCell)
}

class PaintingTableViewCell: UITableViewCell {

    func updateViews() {
        guard let painting = painting else {return}
        paintingImageView.image = painting.image
        if painting.isLiked {
            likeButton.setTitle("Unlike", for: .normal)
        } else {
            likeButton.setTitle("Like", for: .normal)
        }
    }

    
    @IBAction func toggleLikeButton(_ sender: Any) {
        delegate?.likeButtonWasTapped(on: self)
    }
    
    weak var delegate: PaintingTableViewCellDelegate?
    
    @IBOutlet weak var paintingImageView: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    
    var painting: Painting? {
        didSet {
            updateViews()
        }
    }
    
}
