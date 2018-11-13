//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Benjamin Hakes on 11/12/18.
//  Copyright © 2018 Benjamin Hakes. All rights reserved.
//

import UIKit

class PaintingTableViewCell: UITableViewCell {

    @IBOutlet weak var protraitView: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    weak var degelateVariable: PaintingTableViewCellDelegate?
    
    @IBAction func toggledAppreciation(_ sender: Any) {
        //
        degelateVariable?.tappedLikeButton(on: self)
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
