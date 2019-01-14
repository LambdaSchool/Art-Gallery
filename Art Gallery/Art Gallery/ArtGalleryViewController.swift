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
        
        guard let painting = cell.painting else { return }

        guard let button = cell.likeButton else { return }

        if painting.isLike {
            button.titleLabel?.text = "Like"
        } else {
            button.titleLabel?.text = "Unlike"
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
    }
    
    let paintingsController = PaintingsController()
    @IBOutlet weak var tableView: UITableView!

}
