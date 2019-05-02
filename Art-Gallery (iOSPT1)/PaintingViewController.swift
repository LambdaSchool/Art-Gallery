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
        guard let index = tableView.indexPath(for: cell) else {return}
        let selectedRow = paintingController.paintings[index.row]
        if selectedRow.isLiked == false {
            print(selectedRow.isLiked)
            cell.likeButton.setTitle("Unlike", for: .normal)
            print(selectedRow.isLiked)
        } else {
            print(selectedRow.isLiked)
            cell.likeButton.setTitle("Like", for: .normal)
            print(selectedRow.isLiked)
        }
        paintingController.toggleIsLiked(for: selectedRow)
       // tableView.reloadRows(at: [index], with: .none)    without this, it works
    }
}


/*
 if selectedRow.isLiked == false {
 cell.likeButton.setTitle("Unlike", for: .normal)
 } else {
 cell.likeButton.setTitle("Like", for: .normal)
 }

 */
