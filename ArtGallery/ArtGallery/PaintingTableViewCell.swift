//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Jeffrey Carpenter on 4/24/19.
//  Copyright © 2019 Jeffrey Carpenter. All rights reserved.
//

import UIKit

class PaintingTableViewCell: UITableViewCell {

    @IBOutlet weak var portraitView: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    
    weak var delegate: PaintingTableViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func toggledAppreciation(_ sender: UIButton) {
    }
    
}
