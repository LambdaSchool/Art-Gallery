//
//  PaintingTableViewCell.swift
//  artGallery
//
//  Created by Michael Flowers on 1/14/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

import UIKit

//implement protocol
protocol PaintingTableViewCellDelegate: class {
    func tappedLikeButton(on cell: PaintingTableViewCell)
}

class PaintingTableViewCell: UITableViewCell {
    
    //MARK: - Properties
    weak var delegate: PaintingTableViewCellDelegate?
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
