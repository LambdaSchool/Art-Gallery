//
//  PaintingTableViewCell.swift
//  ArtGallery
//
//  Created by Dillon McElhinney on 8/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

//Define a protocol for the delegate, to ensure it has a likeButtonWasTapped method.
protocol PaintingTableViewCellDelegate: class{
    func likeButtonWasTapped(on cell: PaintingTableViewCell)
}

class PaintingTableViewCell: UITableViewCell {
    
    //Struct to hold a few custom UIColors. I'm sure there is a better way to do this, but it's what I've got for now.
    struct Colors {
        static let gold = UIColor(red: 196/255, green: 143/255, blue: 18/255, alpha: 1)
        static let red = UIColor(red: 199/255, green: 60/255, blue: 40/255, alpha: 1)
    }

    @IBOutlet weak var paintingImageView: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    
    weak var delegate: PaintingTableViewCellDelegate?
    
    var painting: Painting? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        //Make sure there is a painting
        guard let painting = painting else { return }
        
        //Set the image view's image to the painting's image
        paintingImageView.image = painting.image
        
        //Update Like button
        if painting.isLiked {
            likeButton.setTitle("Unlike", for: .normal)
            likeButton.setTitleColor(Colors.red, for: .normal)
        } else {
            likeButton.setTitle("Like", for: .normal)
            likeButton.setTitleColor(Colors.gold, for: .normal)
        }
    }
    
    //Call Delegate's likeButtonWasTapped method when the Like button is tapped.
    @IBAction func likePainting(_ sender: UIButton) {
        delegate?.likeButtonWasTapped(on: self)
    }
    
}
