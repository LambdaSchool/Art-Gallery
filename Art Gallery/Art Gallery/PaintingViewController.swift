//
//  ViewController.swift
//  Art Gallery
//
//  Created by Moses Robinson on 1/14/19.
//  Copyright © 2019 Moses Robinson. All rights reserved.
//

import UIKit

class PaintingViewController: UIViewController, UITableViewDataSource, PaintingTableViewCellDelegate {
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        tableView.dataSource = self
//        tableView.reloadData()
//    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.dataSource = self
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintingModel.paintings.count
    }
    
    let reuseIdentifier = "paintingCell"
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! PaintingTableViewCell
        
        let painting = paintingModel.paintings[indexPath.row]
        cell.painting = painting
        cell.delegate = self
        
        return cell
    }
    
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        let painting = paintingModel.paintings[indexPath.row]
        paintingModel.updateIsLiked(painting: painting)
        
        tableView.reloadRows(at: [indexPath], with: .none)
    }

    // MARK: - Properties
    
    let paintingModel = PaintingModel()
    
    @IBOutlet weak var tableView: UITableView!
}

