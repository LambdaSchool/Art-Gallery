//
//  PaintingListViewController.swift
//  ArtGallery
//
//  Created by Moin Uddin on 8/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PaintingListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, PaintingTableViewCellDelegate {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        paintingList.reloadData()
        
    }
    func likeButtonTapped(on cell: PaintingTableViewCell) {
        guard let indexPath = paintingList.indexPath(for: cell) else { return }
        let painting = paintingController.paintings[indexPath.row]
        paintingController.toggleIsLiked(painting: painting)
        paintingList.reloadRows(at: [indexPath], with: .automatic)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        paintingList.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintingController.paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PaintingCell", for: indexPath) as? PaintingTableViewCell else { return UITableViewCell() }
        let painting = paintingController.paintings[indexPath.row]
        cell.delegate = self
        cell.imageView?.image = painting.image
        painting.isLiked ? (cell.likeButton?.setTitle("Unlike", for: .normal)) : (cell.likeButton?.setTitle("Like", for: .normal))
        print(painting.isLiked)
        //painting.isLiked ? (cell.textLabel?.text = "Unlike") : (cell.textLabel?.text = "Like")
        return cell
    }
    
    
    @IBOutlet weak var paintingList: UITableView!
    let paintingController = PaintingController()
}
