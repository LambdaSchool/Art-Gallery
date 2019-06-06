//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Jordan Davis on 5/1/19.
//  Copyright © 2019 Jordan Davis. All rights reserved.
//

import UIKit

protocol PaintingTableViewCellDelegate: class {
    func likeButtonWasTapped(on cell: PaintingTableViewCell)
}

class PaintingTableViewCell: UITableViewCell {

    @IBAction func likeButtonPressed(_ sender: Any) {
        print("Button Tapped")
        delegate?.likeButtonWasTapped(on: self)
    }
    
    //MARK: - Private Methods
    
    private func updateViews() {
        guard let painting = painting else { return }
        let likeButtonTitle = painting.isLiked ? "Unlike" : "Like"
        likeButton.setTitle(likeButtonTitle, for: .normal)
        
        paintingImageView.clipsToBounds = false     // I think I needed to update my clip to bounds in order for my coners to be rounded
        paintingImageView.layer.cornerRadius = 10 // This should allow my UIImage to round its corners
        paintingImageView.layer.borderWidth = 3    // This sets the border
        paintingImageView.image = painting.image

    }
    
    @IBOutlet var likeButton: UIButton!
    @IBOutlet var paintingImageView: UIImageView!
    
    
    //MARk: -Properties
    weak var delegate: PaintingTableViewCellDelegate?
    var painting: Painting? {
        didSet {
            updateViews()
        }
    }
}

