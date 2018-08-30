//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Ilgar Ilyasov on 8/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

protocol PaintingTableViewCellDelegate: class {
    func likeButtonWasTapped(on cell: PaintingTableViewCell)
}

class PaintingTableViewCell: UITableViewCell {

    @IBOutlet weak var imageViewCell: UIImageView!
    
    @IBOutlet weak var likeButtonOutlet: UIButton!
    
    @IBAction func likeButton(_ sender: Any) {
        
        delegate?.likeButtonWasTapped(on: self)
        print("Button tapped")
    }
    
    
    var painting: Painting? {
        didSet { updateViews() }
    }
    
    weak var delegate: PaintingTableViewCellDelegate?
    
    func updateViews() {
        
        guard let painting = painting else { return }
        imageViewCell.image = painting.image
        
        let likeButtonText = painting.isLiked ? "Like" : "Unlike"
        likeButtonOutlet.setTitle(likeButtonText, for: .normal)
    }
}
