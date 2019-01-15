//
//  PaintingDetailViewController.swift
//  Art Gallery
//
//  Created by Nathanael Youngren on 1/14/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

import UIKit

class PaintingDetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if let painting = painting {
            paintingLabel.text = painting.information
        }
    }
    
    @IBAction func dismissVC(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var paintingLabel: UILabel!
    
    var painting: Painting?

}
