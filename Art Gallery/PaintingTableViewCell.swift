//
//  PaintingTableViewCell.swift
//  Art Gallery
//
//  Created by Nathan Hedgeman on 5/1/19.
//  Copyright © 2019 Nate Hedgeman. All rights reserved.
//

import UIKit

class PaintingTableViewCell: UITableViewCell {
    //what is this?
    var painting: Painting? {
        //explain functions inside of properties
        didSet{
            
            updateViews()
            
         }
        
    }
    func updateViews(){
        
        guard let painting = painting else {return}
        paintingImage.image = painting.image
        if (painting.isLiked) {
            isLikedButton.setTitle("Unlike", for: .normal)
        }
    }
    
    @IBOutlet weak var paintingImage: UIImageView!
    
    @IBOutlet weak var isLikedButton: UIButton!
    
    @IBAction func isLikedButtonTapped(_ sender: Any) {
    }
}
