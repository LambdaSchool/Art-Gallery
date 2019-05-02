//
//  PaintingListViewController.swift
//  Art Gallery
//
//  Created by Nathan Hedgeman on 5/1/19.
//  Copyright © 2019 Nate Hedgeman. All rights reserved.
//

import UIKit

class PaintingListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, PaintingViewCellDelegate {
    func isLikedButtonTapped(on cell: PaintingTableViewCell) {
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintingController.paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PaintingCell", for: indexPath) as? PaintingTableViewCell else { return UITableViewCell() }
        
        let painting = paintingController.paintings[index.row]
        cell.delegate = self
        cell.painting = painting
        
        return cell
        
    }
    let paintingController = PaintingController()
}
