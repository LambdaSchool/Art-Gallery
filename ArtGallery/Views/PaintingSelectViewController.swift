//
//  PaintingSelectViewController.swift
//  ArtGallery
//
//  Created by Kat Milton on 6/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class PaintingSelectViewController: UIViewController {
    @IBOutlet var selectedImage: UIImageView!
    var selectedPainting: String?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        
// Selecting the image to be loaded withing the view.
        if let imageToLoad = selectedPainting {
            selectedImage.image = UIImage(named: imageToLoad)
        }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
