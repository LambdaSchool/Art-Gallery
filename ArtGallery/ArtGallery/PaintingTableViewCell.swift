//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Christopher Aronson on 4/24/19.
//  Copyright © 2019 Christopher Aronson. All rights reserved.
//

import UIKit

class PaintingTableViewCell: UITableViewCell {
	@IBOutlet var paintingImageView: UIImageView!
	
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

	@IBAction func likeButtonPressed(_ sender: Any) {
	}
}
