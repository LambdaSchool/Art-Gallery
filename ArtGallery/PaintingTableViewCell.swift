//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Alex Shillingford on 6/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol PaintingTableViewCellDelegate: class {
    func likeButtonWasTapped(on cell: PaintingTableViewCell)
}

class PaintingTableViewCell: UITableViewCell {
    
    // MARK: IBOutlets and Properties
    
    @IBOutlet weak var imageViewOutlet: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    
    weak var delegate: PaintingTableViewCellDelegate?
    
    var painting: Painting? {
        didSet {
            updateViews()
        }
    }
    
    
    // MARK: IBActions and Methods
    
    @IBAction func likeButtonTapped(_ sender: Any) {
        self.delegate?.likeButtonWasTapped(on: self)
    }
    
    func updateViews() {
        if let unwwrappedPainting = painting {
            imageViewOutlet.image = unwwrappedPainting.image
            
            let isLikedString = unwwrappedPainting.isLiked ? "Unlike" : "Like"
            
            likeButton.setTitle(isLikedString, for: .normal)
            
            
//            if unwwrappedPainting.isLiked == true {
//                likeButton.setTitle("Unlike", for: .highlighted)
//            } else {
//                likeButton.setTitle("Like", for: .normal)
//            }
            
        }
        
        
    }
    
    
}
