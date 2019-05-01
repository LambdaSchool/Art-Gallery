//
//  ViewController.swift
//  Art-Gallery (iOSPT1)
//
//  Created by Dongwoo Pae on 4/30/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

import UIKit

class PaintingViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, PaintingTableViewCellDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    let paintingController = PaintingController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func viewWillAppear(_ animated: Bool) {
        self.tableView.reloadData()
    }


    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintingController.paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        guard let imageCell = cell as? PaintingTableViewCell else {return cell}
        let image = paintingController.paintings[indexPath.row]
        imageCell.painting = image
        imageCell.delegate = self
        return cell
    }
    
    func tappedLikeButton(on cell: PaintingTableViewCell) {
      
        }

    
}

