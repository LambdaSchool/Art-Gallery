//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Kat Milton on 6/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class PaintingTableViewCell: UITableViewCell {
    @IBOutlet var paintingImage: UIImageView!
    @IBOutlet var likeButton: UIButton!
    
    
    var painting: Painting?
    
    
    @IBAction func likeButtonPressed(_ sender: Any) {
        painting?.isLiked.toggle()
    }
    
    
    func updateView() {
        guard let currentPainting = self.painting else { return }
            self.paintingImage.image = currentPainting.image
            if self.painting?.isLiked == true {
                likeButton.setTitle("Liked", for: .normal)
            } else {
                likeButton.setTitle("Like", for: .normal)
        }
        
    }
}
