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
    
    var selectedPainting: String? {
        didSet {
            self.updateViews()
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateViews()
        
// Selecting the image to be loaded withing the view.
//        if let imageToLoad = selectedPainting {
//            selectedImage.image = UIImage(named: imageToLoad)
//        }
        

        
    }
    
    private func updateViews() {
        guard let selectedPainting = self.selectedPainting, isViewLoaded else { return }
        
        selectedImage.image = UIImage(named: selectedPainting)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
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
