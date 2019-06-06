//
//  PaintingListViewController.swift
//  ArtGallery
//
//  Created by Jordan Davis on 5/1/19.
//  Copyright © 2019 Jordan Davis. All rights reserved.
//

import UIKit

class PaintingListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, PaintingTableViewCellDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self // we ONLY set these and the extensions because we embedded a table view into a UIViewController
        tableView.dataSource = self // when we use tableViewControllers, we won't need to call these functions or create data source & delegate extensions

    }
    
    //MARK: - PaintingTableViewCellDelegate
    
    func likeButtonWasTapped(on cell: PaintingTableViewCell) {
        
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        
        let painting = paintingController.paintings[indexPath.row]
        
        paintingController.toggleIsLiked(for: painting)
        
        tableView.reloadRows(at: [indexPath], with: .none)
    }
    

    
    //MARK: -UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintingController.paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PaintingCell", for: indexPath) as? PaintingTableViewCell else { fatalError("Cell must have reuse identifier PaintingCell, and be of type PaintingTableViewCell") }
    
    let painting = paintingController.paintings[indexPath.row] // this finds the specific painting at the location its at
    
    cell.painting = painting
    cell.delegate = self
        
    return cell
        
    }

    //MARK: -Properties
    let paintingController = PaintingController()
    let paintingTVC = PaintingTableViewCell()
    
    @IBOutlet var tableView: UITableView!
    
}
