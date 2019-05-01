//
//  PaintingTableViewCell.swift
//  Art-Gallery (iOSPT1)
//
//  Created by Dongwoo Pae on 4/30/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//
import Foundation
import UIKit

class PaintingTableViewCell: UITableViewCell {

    
    @IBOutlet weak var portraitView: UIImageView!
   
    @IBOutlet weak var likeButton: UIButton!
    
    var painting : Painting?  {
        didSet {
            updateView()
        }
    }
    
    
    
    weak var delegate : PaintingTableViewCellDelegate?
    
    
    @IBAction func toggledAppreciation(_ sender: Any) {
        self.delegate?.tappedLikeButton(on: self)
    }
    
    
    func updateView() {
        guard let input = painting else {return}
        portraitView.image = input.image
    }
    
    
/*
    override func awakeFromNib() {
        super.awakeFromNib()
        updateView()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

 */
}
