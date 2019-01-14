//
//  PaintingViewController.swift
//  ArtGallery
//
//  Created by Paul Yi on 1/14/19.
//  Copyright © 2019 Paul Yi. All rights reserved.
//

import UIKit

class PaintingViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, PaintingTableViewCellDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    let paintingController = PaintingController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
    func likeButtonWasTapped(on cell: PaintingTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        guard let painting = cell.painting else { return }
        
        paintingController.toggleIsLiked(for: painting)
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
    
    // MARK: - Table view data source methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintingController.paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PaintingCell", for: indexPath)
        guard let paintingCell = cell as? PaintingTableViewCell else { return cell }
        
        let painting = paintingController.paintings[indexPath.row]
        paintingCell.painting = painting
        paintingCell.delegate = self
        
        return paintingCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
}





