//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Jake Connerly on 6/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit



class PaintingTableViewCell: UITableViewCell {
    
    //MARK: - IBOutlets and IBActions
    @IBOutlet weak var paintingImageView: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    
    @IBAction func likeButtonTapped(_ sender: UIButton) {
    }
    
    var painting: Painting? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        guard let painting = painting else { return }
        paintingImageView.image = painting.image
        //SET UP LIKED TAPPED
        }
}
