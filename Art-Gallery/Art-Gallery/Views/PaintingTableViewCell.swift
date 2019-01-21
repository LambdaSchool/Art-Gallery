//
//  PaintingTableViewCell.swift
//  Art-Gallery
//
//  Created by Vijay Das on 1/21/19.
//  Copyright © 2019 Vijay Das. All rights reserved.
//

import UIKit

class PaintingTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var paintingImage: UIImageView!
    
    @IBOutlet weak var likeButton: UIButton!
    
    @IBAction func likeButtonTapped(_ sender: UIButton) {


    }
    
 
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
