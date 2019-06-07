//
//  PaintingListViewController.swift
//  ArtGallery
//
//  Created by Alex Shillingford on 6/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class PaintingListViewController: UIViewController {
    
    // MARK: - IBOutlets and Properties
    @IBOutlet weak var galleryTableView: UITableView!
    
    let paintingController = PaintingController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        galleryTableView.delegate = self
        galleryTableView.dataSource = self
    }
    
    // MARK: - Navigation
}


// MARK: - Extensions
extension PaintingListViewController: UITableViewDelegate {
    
}

extension PaintingListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintingController.paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "GalleryCell", for: indexPath) as? PaintingTableViewCell else { return UITableViewCell() }
        let painting = paintingController.paintings[indexPath.row]
        
        
        cell.painting = painting
        cell.delegate = self
        return cell
    }
    
    
}

extension PaintingListViewController: PaintingTableViewCellDelegate {
    func likeButtonWasTapped(on cell: PaintingTableViewCell) {
        guard let painting = cell.painting,
            let index = self.galleryTableView.indexPath(for: cell) else { return }
        
        let newPainting = self.paintingController.paintings[index.row]
        
        paintingController.toggleIsLiked(for: painting)
        galleryTableView.reloadRows(at: [index], with: .fade)
    }
}
