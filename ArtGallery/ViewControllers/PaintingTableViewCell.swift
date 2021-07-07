//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Rick Wolter on 8/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit


protocol PaintingTableViewCellDelegate: class {
    func likeButtonWasTapped(on cell: PaintingTableViewCell)
}

class PaintingTableViewCell: UITableViewCell {

    
    
    
    
    
    var painting: Painting? {
        didSet {
            updateViews()
        }
    }
    var delegate: PaintingTableViewCellDelegate?
    
    @IBOutlet weak var paintingImageView: UIImageView!
    
    @IBOutlet weak var button: UIButton!
    
    @IBAction func likeButton(_ sender: Any) {
        delegate?.likeButtonWasTapped(on: self)
    }
    
    func updateViews(){
        
    guard let painting = painting else {return}
    paintingImageView.image = painting.image
    
        if painting.isLiked{
            button.setTitle("Unlike", for: .normal)
        } else if !painting.isLiked{
            button.setTitle("Like", for: .normal)
        }
        }
    func toggle(for painting: Painting)  {
        
        if painting.isLiked == false {
            painting.isLiked = true
        } else if painting.isLiked == true {
            painting.isLiked = false
        }
    }
    
    
    
}
