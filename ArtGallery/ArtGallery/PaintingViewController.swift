//
//  PaintingViewController.swift
//  ArtGallery
//
//  Created by Jeffrey Carpenter on 4/24/19.
//  Copyright © 2019 Jeffrey Carpenter. All rights reserved.
//

import UIKit

class PaintingViewController: UIViewController, PaintingTableViewCellDelegate {
   

    let paintingModel = PaintingModel()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    func tappedLikedButton(on cell: PaintingTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        
        paintingModel.paintings[indexPath.row].isLiked = !paintingModel.paintings[indexPath.row].isLiked
        tableView.reloadData()
    }

}

extension PaintingViewController: UITableViewDataSource, UITableViewDelegate {
    
    // MARK: - TableView DataSource Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintingModel.paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PaintingCell", for: indexPath)
        
        guard let paintingCell = cell as? PaintingTableViewCell else { return cell }
        paintingCell.delegate = self
        
        let painting = paintingModel.paintings[indexPath.row]
        paintingCell.painting = painting
        
        return cell
        
    }
    
}
