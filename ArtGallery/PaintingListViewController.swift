//
//  PaintingListViewController.swift
//  ArtGallery
//
//  Created by Daniela Parra on 8/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PaintingListViewController: UIViewController, UITableViewDataSource, PaintingTableViewCellDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintingController.paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PaintingCell", for: indexPath) as? PaintingTableViewCell else { return UITableViewCell() }
        
        let painting = paintingController.paintings[indexPath.row]
        
        cell.painting = painting
        cell.delegate = self
        
        return cell
    }
    
    func likeButtonWasTapped (on cell: PaintingTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell) else {return}
        
        let painting = paintingController.paintings[indexPath.row]
        paintingController.toggleIsLiked(for: painting)
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
    let paintingController = PaintingController()
    
    @IBOutlet weak var tableView: UITableView!
    
}
