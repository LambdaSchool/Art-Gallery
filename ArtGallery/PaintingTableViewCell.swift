//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Moin Uddin on 8/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

protocol PaintingTableViewCellDelegate: class {
    func likeButtonTapped(on cell: PaintingTableViewCell)
}

class PaintingTableViewCell: UITableViewCell {
    
    func updateViews(){
        guard let painting = painting else { return }
        paintingImage.image = painting.image
        painting.isLiked ? likeButton.setTitle("Unlike", for: .normal) : likeButton.setTitle("Like", for: .normal)
    }
    
    
    @IBAction func likeButtonTapped(_ sender: Any) {
        delegate?.likeButtonTapped(on: self)
        
    }
    weak var delegate: PaintingTableViewCellDelegate?
    
    @IBOutlet weak var paintingImage: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    
    var painting: Painting? {
        didSet {
            updateViews()
        }
    }
}
