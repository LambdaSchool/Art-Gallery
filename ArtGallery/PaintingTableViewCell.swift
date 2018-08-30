//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Farhan on 8/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

protocol PaintingTableViewCellDelegate: class {
    
    func likeButtonWasTapped(on cell: PaintingTableViewCell)
}

class PaintingTableViewCell: UITableViewCell {

    weak var delegate: PaintingTableViewCellDelegate?
    
    @IBOutlet weak var paintingImage: UIImageView!
    
    @IBOutlet weak var likeButton: UIButton!
    
    var painting: Painting?{
        didSet {
            updateViews()
        }
    }
    
    func updateViews(){
        
        guard let painting = painting else {return}

        paintingImage.image = painting.image
        
        
        if painting.isLiked {
            likeButton.setTitle("💔", for: UIControlState.normal)
        } else {
            likeButton.setTitle("❤️", for: UIControlState.normal)
        }
        
    }
    
    @IBAction func likeButtonPressed(_ sender: Any) {
        delegate?.likeButtonWasTapped(on: self)
    }
}
