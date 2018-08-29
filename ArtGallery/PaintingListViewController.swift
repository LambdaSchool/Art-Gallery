//
//  PaintingListViewController.swift
//  ArtGallery
//
//  Created by Jason Modisett on 8/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PaintingListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, PaintingTableViewCellDelegate {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    func likeButtonWasTapped(on cell: PaintingTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        
        let painting = paintingController.paintings[indexPath.row]
        paintingController.toggleIsLiked(for: painting)
        
        tableView.reloadRows(at: [indexPath], with: .automatic)
        
        let haptic = UIImpactFeedbackGenerator(style: .medium)
        haptic.impactOccurred()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintingController.paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PaintingCell", for: indexPath) as? PaintingTableViewCell else { return UITableViewCell() }
    
        cell.delegate = self
        cell.painting = paintingController.paintings[indexPath.row]
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowModal" {
            guard let modalViewController = segue.destination as? PaintingModalViewController else { return }
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            let painting = paintingController.paintings[indexPath.row]
            modalViewController.painting = painting
        }
    }
    
    let paintingController = PaintingController()

    @IBOutlet weak var tableView: UITableView!
    
}
