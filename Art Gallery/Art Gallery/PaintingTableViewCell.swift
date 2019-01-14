//
//  PaintingTableViewCell.swift
//  Art Gallery
//
//  Created by Moses Robinson on 1/14/19.
//  Copyright © 2019 Moses Robinson. All rights reserved.
//

import UIKit

class PaintingTableViewCell: UITableViewCell {

    @IBAction func toggledAppreciation(_ sender: Any) {
        delegate?.tappedLikeButton(on: self)
    }
    
    //MARK: - Properties
    
    weak var delegate: PaintingTableViewCellDelegate?
    
    @IBOutlet weak var portraitView: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
}
