//
//  PaintingListViewController.swift
//  ArtGallery
//
//  Created by Ilgar Ilyasov on 8/30/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PaintingListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, PaintingTableViewCellDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabelViewOutlet.rowHeight = 300
        tabelViewOutlet.dataSource = self
    }
    
    @IBOutlet weak var tabelViewOutlet: UITableView!
    let paintingController = PaintingController()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintingController.paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? PaintingTableViewCell else { return UITableViewCell()}
        
        let painting = paintingController.paintings[indexPath.row]
        cell.painting = painting
        cell.delegate = self
        
        return cell
    }
    
    func likeButtonWasTapped(on cell: PaintingTableViewCell) {
        
        guard let indexPath = tabelViewOutlet.indexPath(for: cell) else { return }
        let painting = paintingController.paintings[indexPath.row]
        
        paintingController.toggleIsLiked(for: painting)
        tabelViewOutlet.reloadRows(at: [indexPath], with: .automatic)
    }
}
