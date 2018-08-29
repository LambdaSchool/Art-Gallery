//
//  PaintingListViewController.swift
//  ArtGallery
//
//  Created by Dillon McElhinney on 8/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PaintingListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, PaintingTableViewCellDelegate {
    
    //MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Set tableView's data source and delegate
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    // MARK: - Properties
    @IBOutlet weak var tableView: UITableView!
    let paintingController = PaintingController()
    
    // MARK: - PaintingTableViewCell Delegate
    func likeButtonWasTapped(on cell: PaintingTableViewCell) {
        //Unwrap the cell's painting and the indexPath of the cell
        guard let painting = cell.painting, let indexPath = tableView.indexPath(for: cell) else { return }
        
        //Update isLiked on the painting
        paintingController.toggleIsLiked(for: painting)
        
        //Reload the row
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
    
    // MARK: - Tableview Delegate
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        //Set height for rows. For now, the arbitrary 240 pixels. Here is where I will attempt to make custom row heights based on the image later.
        return 240
    }
    
    // MARK: - Tableview Data Source
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
