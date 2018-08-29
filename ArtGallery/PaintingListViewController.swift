//
//  PaintingListViewController.swift
//  ArtGallery
//
//  Created by Ilgar Ilyasov on 8/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PaintingListViewController: UIViewController, UITableViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        paintingTableView.dataSource = self
        
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
        
        return cell
    }
    
}
