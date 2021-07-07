//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Ilgar Ilyasov on 8/30/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

protocol PaintingTableViewCellDelegate: class {
    
    func likeButtonWasTapped(on cell: PaintingTableViewCell)
}

class PaintingTableViewCell: UITableViewCell {
    
    var painting: Painting? {
        
        didSet { updateViews() }
    }
    
    func updateViews() {
        
        guard let painting = painting else { return }
        imageOutlet.image = painting.image
        
        let likeButtonText = painting.isLiked ? "Liked" : "Unliked"
        buttonOutlet.setTitle(likeButtonText, for: .normal)
    }
    
    weak var delegate: PaintingTableViewCellDelegate?
    
    @IBOutlet weak var imageOutlet: UIImageView!
    @IBOutlet weak var buttonOutlet: UIButton!
    
    @IBAction func buttonAction(_ sender: Any) {
        
        delegate?.likeButtonWasTapped(on: self)
    }
}
