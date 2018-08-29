//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Jason Modisett on 8/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

protocol PaintingTableViewCellDelegate: class {
    func likeButtonWasTapped(on cell: PaintingTableViewCell)
}

class PaintingTableViewCell: UITableViewCell {
    
    @IBAction func likeButtonTapped(_ sender: Any) {
        delegate?.likeButtonWasTapped(on: self)
    }
    
    func updateViews() {
        guard let painting = painting else { return }
        paintingImageView.image = painting.image
        let titleText = painting.isLiked ? "👎 UNLIKE" : "👍 LIKE"
        likeButton.setTitle(titleText, for: .normal)
    }
    
    var painting: Painting? { didSet { updateViews() }}
    weak var delegate: PaintingTableViewCellDelegate?

    @IBOutlet weak var paintingImageView: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    
}
