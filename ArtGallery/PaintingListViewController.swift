//
//  PaintingListViewController.swift
//  ArtGallery
//
//  Created by Ilgar Ilyasov on 8/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PaintingListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, PaintingTableViewCellDelegate {
    
    func likeButtonWasTapped(on cell: PaintingTableViewCell) {
       
        guard let indexPath = paintingTableView.indexPath(for: cell) else { return }
        let painting = paintingController.paintings[indexPath.row]
        paintingController.toggleIsLiked(for: painting)
        
        paintingTableView.reloadRows(at: [indexPath], with: .none)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        paintingTableView.dataSource = self
        paintingTableView.delegate = self
        
    }

    @IBOutlet weak var paintingTableView: UITableView!
    
    let paintingController = PaintingController()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintingController.paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? PaintingTableViewCell else { return UITableViewCell() }
        
        let painting = paintingController.paintings[indexPath.row]
        cell.painting = painting
        
        cell.delegate = self
        return cell
    }
    
}
