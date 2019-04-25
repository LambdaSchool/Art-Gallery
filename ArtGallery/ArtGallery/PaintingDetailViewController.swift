//
//  DetailViewController.swift
//  ArtGallery
//
//  Created by Michael Redig on 4/24/19.
//  Copyright © 2019 Christopher Aronson. All rights reserved.
//

import UIKit

class PaintingDetailViewController: UIViewController {
	
	var paintingImage: UIImage?
	
	@IBOutlet var paintingImageView: UIImageView?
	
	

    override func viewDidLoad() {
        super.viewDidLoad()
		
		if let image = paintingImage {
			paintingImageView?.image = image
		}

        // Do any additional setup after loading the view.
    }
    

	@IBAction func doneButtonPressed(_ sender: UIButton) {
		dismiss(animated: true)
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
