//
//  PaintingTableViewCell.swift
//  Gallery
//
//  Created by Nelson Gonzalez on 1/14/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import UIKit

class PaintingTableViewCell: UITableViewCell {

    let paintingModel = PaintingModel()
    weak var delegate: PaintingTableViewCellDelegate?
    
    @IBOutlet weak var artImage: UIImageView!
    
    @IBOutlet weak var likeButton: UIButton!
    
    
    var painting: Painting? {
        didSet{
            updateViews()
        }
    }
    
    

    
    func updateViews(){
      guard let painting = painting else {return}
        artImage.image = painting.image
        let likeButtonTitle = painting.isLiked ? "Unlike" : "Like"
        likeButton.setTitle(likeButtonTitle, for: .normal)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func likeButton(_ sender: UIButton) {
        delegate?.tappedLikeButton(on: self)
        
    }
    
}
