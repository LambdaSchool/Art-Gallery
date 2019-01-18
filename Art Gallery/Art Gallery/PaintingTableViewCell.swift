//
//  PaintingTableViewCell.swift
//  Art Gallery
//
//  Created by Moses Robinson on 1/14/19.
//  Copyright © 2019 Moses Robinson. All rights reserved.
//

import UIKit

protocol PaintingTableViewCellDelegate: class {
    func tappedLikeButton(on cell: PaintingTableViewCell)
}

class PaintingTableViewCell: UITableViewCell {

    @IBAction func toggledAppreciation(_ sender: Any) {
        delegate?.tappedLikeButton(on: self)
    }
    
    private func updateViews() {
        guard let painting = painting else { return }
        
        let title = "🔥"
        likeButton.setTitle(title, for: .normal)
        portraitView.image = painting.image
        likeButton.alpha = painting.isLiked ? 1.0 : 0.33
    }
    
    //MARK: - Properties
    
    weak var delegate: PaintingTableViewCellDelegate?
    
    var painting: Painting? {
        didSet {
            updateViews()
        }
    }
    
    @IBOutlet weak var portraitView: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
}
