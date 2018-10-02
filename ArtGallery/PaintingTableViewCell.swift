//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Sean Hendrix on 9/28/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PaintingTableViewCell: UITableViewCell {

    @IBOutlet weak var buttonOutlet: UIButton!
    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        
    }
    
    //The view controller is going to pass a Painting object to the cell in order for the cell to know what information to display (like the image and what the button's title should be). Create a painting variable that holds a Painting?
    
    func updateViews() {
        // unwrap painting and puts its image in the image view
    }
    
    
}
