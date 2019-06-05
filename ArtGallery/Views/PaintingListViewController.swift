//
//  PaintingListViewController.swift
//  ArtGallery
//
//  Created by Kat Milton on 6/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class PaintingListViewController: UIViewController, UITableViewDataSource, PaintingTableViewCellDelegate {
    
    // MARK: - Outlets and Properties
    @IBOutlet var paintingTable: UITableView!
    var paintingController = PaintingController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.paintingTable.dataSource = self
                
    }
    
    // MARK: - Table View
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintingController.paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PaintingCell", for: indexPath)
        
        guard let paintingCell = cell as? PaintingTableViewCell else { return cell }
        
        let painting = paintingController.paintings[indexPath.row]
        paintingCell.painting = painting
        
        // Set delegate.
        paintingCell.delegate = self
        
        return cell
    }
    
    // Adopting delegate. Reloads cell row when button is pressed.
    
    func likeButtonWasTapped(on cell: PaintingTableViewCell) {
        guard let paintingLiked = cell.painting?.isLiked else { return }
        
        guard let index = paintingTable.indexPath(for: cell.self) else { return }
        if paintingLiked == true {
            paintingController.toggleIsLiked(for: cell.painting!)
            
        } else if paintingLiked == false {
            paintingController.toggleIsLiked(for: cell.painting!)
        } else {
            return
        }
        self.paintingTable.reloadRows(at: [index], with: UITableViewRowAnimation.fade)
        
        
    }
    
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let selectedIndexPath = .indexPathForSelectedRow!
//        let picture = paintingTable[selectedIndexPath.row]
//        let paintingSelectVC = segue.destination as! PaintingSelectViewController
//        paintingSelectVC.picture = picture
//    }
    

}
