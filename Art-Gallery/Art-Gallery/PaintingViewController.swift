//
//  PaintingViewController.swift
//  Art-Gallery
//
//  Created by Vijay Das on 1/14/19.
//  Copyright © 2019 Vijay Das. All rights reserved.
//

import UIKit

class PaintingViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, PaintingTableViewCellDelegate {
    
    let reuseIdentifier = "PaintingCell"
    
    let paintingController = PaintingController()
    
    func tappedLikeButton(on cell: PaintingTableViewCell) {

        guard let indexPath = tableView.indexPath(for: cell) else { return }
        
        paintingController.toggleIsLiked(at: indexPath)
        tableView.reloadData()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return paintingController.paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! PaintingTableViewCell
        let painting = paintingController.painting(for: indexPath)
        
        cell.paintingImageView.image = painting.image
        
        let buttonText = painting.isLiked ? "Unlike" : "Like"
        cell.likeButton.setTitle(buttonText, for: .normal)
        
        return cell

        
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    

}
