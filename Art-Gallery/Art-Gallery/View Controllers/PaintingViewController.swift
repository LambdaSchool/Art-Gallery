//
//  PaintingViewController.swift
//  Art-Gallery
//
//  Created by Vijay Das on 1/21/19.
//  Copyright © 2019 Vijay Das. All rights reserved.
//

import UIKit

class PaintingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, PaintingTableViewCellDelegate {
    
    
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        
        paintingModelController.toggleIsLiked(at: indexPath)
        tableView.reloadData()
    }
    
    
    let paintingModelController = PaintingModelController()
    
    let reuseIdentifier = "PaintingCell"
 

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return paintingModelController.paintings.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! PaintingTableViewCell
        
        let painting = paintingModelController.painting(for: indexPath)
        
        cell.paintingImage.image = painting.image
        
        let isLikedText = painting.isLiked ? "Unlike" : "Like"
        cell.likeButton.setTitle(isLikedText, for: .normal)
        cell.delegate = self
        return cell
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
