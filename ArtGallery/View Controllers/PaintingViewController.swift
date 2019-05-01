//
//  PaintingViewController.swift
//  ArtGallery
//
//  Created by Hayden Hastings on 4/24/19.
//  Copyright © 2019 Hayden Hastings. All rights reserved.
//

import UIKit

class PaintingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let paintingModel = PaintingModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintingModel.paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        guard let imageCell = cell as? PaintingTableViewCell else { return cell }
        
        let image = paintingModel.paintings[indexPath.row]
        
        imageCell.painting = image
        imageCell.delegate = self as? PaintingTableViewCellDelegate
        
        return cell
    }

    @IBOutlet weak var tableView: UITableView!
}


