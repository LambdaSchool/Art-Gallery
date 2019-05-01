//
//  PaintingTableViewCell.swift
//  Art Gallery
//
//  Created by Michael Stoffer on 4/30/19.
//  Copyright © 2019 Michael Stoffer. All rights reserved.
//

import UIKit

class PaintingTableViewCell: UITableViewCell {

    @IBOutlet weak var portraitView: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    
    var painting: Painting? {
        didSet {
            self.updateViews()
        }
    }
    
    weak var delegate: PaintingTableViewCellDelegate?
    
    private func updateViews() {
        guard let painting = self.painting else { return }
        
        self.portraitView.image = painting.image
        self.portraitView.layer.cornerRadius = 20
        self.portraitView.layer.borderWidth = 2
        self.portraitView.layer.borderColor = UIColor(red: 0, green: 174, blue: 221, alpha: 1.0).cgColor
        self.portraitView.clipsToBounds = true

        if painting.isLiked == true {
            self.likeButton.setTitle("Unlike", for: .normal)
        } else {
            self.likeButton.setTitle("Like", for: .normal)
        }
    }
    
    @IBAction func likeButtonTapped(_ sender: Any) {
        delegate?.tappedLikeButton(on: self)
    }
}
