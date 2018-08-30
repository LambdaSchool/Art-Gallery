//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Rick Wolter on 8/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PaintingTableViewCell: UITableViewCell {
    
    var painting: Painting?

    @IBOutlet weak var paintingImageView: UIImageView!
    
    @IBOutlet weak var button: UIButton!
    
    @IBAction func likeButton(_ sender: Any) {
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
    
}
