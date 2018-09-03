//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Welinkton on 9/1/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class PaintingTableViewCell: UITableViewCell, PaintingTableViewCellDelegate {
    var delegate: PaintingTableViewCellDelegate?
    
    func likeButtonWasTapped(on cell: PaintingTableViewCell) {
        
    }
    
    
    
    func updateViews(){
        
        guard let painting = painting else {return}
        
        paintingImageView.image = painting.image
        
    }

    
    @IBOutlet weak var paintingImageView: UIImageView!
    
    @IBAction func likeButton(_ sender: Any) {
        
        delegate?.likeButtonWasTapped(on: self)
    
    }
    
    var painting: Painting? {
        didSet {
            updateViews()
        }
    }
    
   
    
}
