//
//  PaintingListViewController.swift
//  ArtGallery
//
//  Created by Dillon McElhinney on 8/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PaintingListViewController: UIViewController, UITableViewDataSource, PaintingTableViewCellDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set tableView's data source
        tableView.dataSource = self
    }
    
    @IBOutlet weak var tableView: UITableView!
    let paintingController = PaintingController()
    
    // Mark: - PaintingTableViewCell Delegate
    
    func likeButtonWasTapped(on cell: PaintingTableViewCell) {
        
        guard let painting = cell.painting, let indexPath = tableView.indexPath(for: cell) else { return }
        
        paintingController.toggleIsLiked(for: painting)
        
        tableView.reloadRows(at: [indexPath], with: .automatic)
        
    }
    
    // Mark: - Tableview Data Source
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintingController.paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Deque a cell and make sure it can be cast as a PaintingTableViewCell
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PaintingCell", for: indexPath) as? PaintingTableViewCell else { return UITableViewCell() }
        
        //Get the painting from the paintingController
        let painting = paintingController.paintings[indexPath.row]
        
        //Pass the painting to the cell
        cell.painting = painting
        cell.delegate = self
        
        return cell
    }
    
}
