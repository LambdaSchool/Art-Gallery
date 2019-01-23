//
//  PaintingTableViewCell.swift
//  Art Gallery
//
//  Created by Stuart on 1/14/19.
//  Copyright © 2019 Stuart. All rights reserved.
//

import UIKit

protocol PaintingTableViewCellDelegate: class {
    func tappedLikeButton(on cell: PaintingTableViewCell)
}

class PaintingTableViewCell: UITableViewCell {
    
    // IBActions & Logic
    
    @IBAction func like(_ sender: UIButton) {
        delegate?.tappedLikeButton(on: self)
    }
    
    func updateViews() {
        guard let painting = painting else { return }
        
        paintingView.image = painting.image

        if painting.isLiked == true {
            likeButton.setTitle("Unlike", for: .normal)
        } else {
            likeButton.setTitle("Like", for: .normal)
        }
    }
    
    // IBOutlets & Properties
    
    var painting: Painting? {
        didSet {
            updateViews()
        }
    }
    
    weak var delegate: PaintingTableViewCellDelegate?
    
    @IBOutlet weak var paintingView: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
}
