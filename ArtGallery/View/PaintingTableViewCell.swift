//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Jake Connerly on 6/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol PaintingTableViewCellDelegate: class {
    func likeButtonWasTapped(on cell: PaintingTableViewCell)
}

class PaintingTableViewCell: UITableViewCell {
    
    //MARK: - IBOutlets and IBActions
    @IBOutlet weak var paintingImageView: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    weak var delegate: PaintingTableViewCellDelegate?
    
    @IBAction func likeButtonTapped(_ sender: UIButton) {
        delegate?.likeButtonWasTapped(on: self)
    }
    
    var painting: Painting? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        guard let painting = painting else { return }
        paintingImageView.image = painting.image
        likeButton.titleLabel?.text = "Like"
        }
}
