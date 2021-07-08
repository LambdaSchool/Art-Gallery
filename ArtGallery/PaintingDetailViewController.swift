//
//  PaintingDetailViewController.swift
//  ArtGallery
//
//  Created by Dillon McElhinney on 8/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PaintingDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateViews()
    }
    
    @IBOutlet weak var paintingImageView: UIImageView!
    var painting: Painting?
    
    func updateViews() {
        //Make sure there is a painting and if so, at it to the image view
        guard let painting = painting else { return }
        paintingImageView.image = painting.image
    }
    
    //Dismiss the view when the X is pressed
    @IBAction func dismissPainting(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
