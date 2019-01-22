//
//  PaintingTableViewCell.swift
//  Art Gallery
//
//  Created by Stuart on 1/14/19.
//  Copyright © 2019 Stuart. All rights reserved.
//

import UIKit

protocol PaintingTableViewCellDelegate: class {
    func tappedLike(on cell: PaintingTableViewCell)
}

class PaintingTableViewCell: UITableViewCell {
    
    // IBActions & Logic
    
    @IBAction func like(_ sender: UIButton) {
        
    }
    
    // IBOutlets & Properties
    
    @IBOutlet weak var paintingView: UIImageView!
}
