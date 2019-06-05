//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Kat Milton on 6/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

protocol PaintingTableViewCellDelegate: class {
    func likeButtonWasTapped(on cell: PaintingTableViewCell)
}

class PaintingTableViewCell: UITableViewCell {
    @IBOutlet var paintingImage: UIImageView!
    @IBOutlet var likeButton: UIButton!
    
    
    var painting: Painting? {
        didSet {
            self.updateView()
        }
    }
    
    weak var delegate: PaintingTableViewCellDelegate?
    
    @IBAction func likeButtonPressed(_ sender: Any) {
        delegate?.likeButtonWasTapped(on: self)
    }
    
    
    func updateView() {
        guard let currentPainting = self.painting else { return }
            self.paintingImage.image = currentPainting.image
        if self.painting?.isLiked == true {
            likeButton.setTitle("Unlike", for: .normal)
        } else {
            likeButton.setTitle("Like", for: .normal)
        }
        
        
    }
}
