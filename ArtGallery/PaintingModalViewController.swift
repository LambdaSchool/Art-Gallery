//
//  PaintingModalViewController.swift
//  ArtGallery
//
//  Created by Jason Modisett on 8/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PaintingModalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    func updateViews() {
        guard let painting = painting else { return }
        paintingImageView.image = painting.image
    }
    
    @IBAction func closeModalButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    var painting: Painting?
    
    @IBOutlet weak var paintingImageView: UIImageView!
    
}
