//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Alex Shillingford on 6/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class PaintingTableViewCell: UITableViewCell {
    
    // MARK: IBOutlets and Properties
    
    @IBOutlet weak var imageViewOutlet: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    
    var painting: Painting? {
        didSet {
            updateViews()
        }
    }
    
    
    // MARK: IBActions and Methods
    
    @IBAction func likeButtonTapped(_ sender: Any) {
        
    }
    
    func updateViews() {
        if let unwwrappedPainting = painting {
            imageViewOutlet.image = unwwrappedPainting.image
            
            if unwwrappedPainting.isLiked {
                likeButton.setTitle("Like", for: .normal)
            }
        }
        
        
    }
    
    
}
