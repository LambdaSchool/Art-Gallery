//
//  ArtGalleryViewController.swift
//  Art Gallery
//
//  Created by Nathanael Youngren on 1/14/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

import UIKit

class ArtGalleryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, PaintingTableViewCellDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintingsController.images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellIdentifier", for: indexPath)
        guard let paintingCell = cell as? PaintingTableViewCell else { return cell }
        
        let painting = paintingsController.images[indexPath.row]
        paintingCell.painting = painting
        paintingCell.delegate = self
        
        return paintingCell
    }
    
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        
        let painting = paintingsController.images[indexPath.row]
        
        paintingsController.toggleLike(painting: painting)
        
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PaintingDetail" {
            guard let paintingDetailVC = segue.destination as? PaintingDetailViewController,
                let cell = sender as? PaintingTableViewCell else { return }
            
            paintingDetailVC.painting = cell.painting
        }
    }
    
    let paintingsController = PaintingsController()
    @IBOutlet weak var tableView: UITableView!

}
