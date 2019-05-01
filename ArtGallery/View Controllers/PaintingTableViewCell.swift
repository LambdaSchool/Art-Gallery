//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Hayden Hastings on 4/24/19.
//  Copyright © 2019 Hayden Hastings. All rights reserved.
//

import UIKit

class PaintingTableViewCell: UITableViewCell {
    
    weak var delegate: PaintingTableViewCellDelegate?
    
    var painting: Painting? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let painting = painting else { return }
        
        portaitViewImageView.image = painting.image
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBOutlet weak var portaitViewImageView: UIImageView!
    
    @IBOutlet weak var likeButton: UIButton!
    var isChecked = true
    
    @IBAction func likeButtonPressed(_ sender: UIButton) {
        if isChecked != isChecked {
            sender.setTitle("Like", for: .normal)
        } else {
            sender.setTitle("Unlike", for: .normal)
        }
        
        delegate?.tappedLikeButton(on: self)
    }
}
