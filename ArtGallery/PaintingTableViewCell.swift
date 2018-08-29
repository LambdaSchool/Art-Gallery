//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Ilgar Ilyasov on 8/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PaintingTableViewCell: UITableViewCell {

    @IBOutlet weak var imageViewCell: UIImageView!
    
    @IBAction func likeButton(_ sender: Any) {
    }
    
    var painting: Painting?
    
    func updateViews() {
        
        guard let painting = painting else { return }
        imageViewCell.image = painting.image
    }
}
