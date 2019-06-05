//
//  PaintingListViewController.swift
//  ArtGallery
//
//  Created by Jake Connerly on 6/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

let paintingController = PaintingController()

class PaintingListViewController: UIViewController {
    var index: Int = 0
    var paint: Painting?
    @IBOutlet weak var paintingTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        paintingTableView.delegate = self
        paintingTableView.dataSource = self
        
    }
}
extension PaintingListViewController: UITableViewDelegate {
    
}
extension PaintingListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintingController.paintings.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PaintCell", for: indexPath) as? PaintingTableViewCell else { return UITableViewCell()}
        paint = paintingController.paintings[indexPath.row]
        cell.paintingImageView.image = paint?.image
       cell.delegate = self
        index = indexPath.row
        return cell
    }
}

extension PaintingListViewController: PaintingTableViewCellDelegate {
    func likeButtonWasTapped(on cell: PaintingTableViewCell) {

        print("Extension running when tapped")
        guard let chosenPainting = paint else { print("error Recognising chosen cell"); return}
        paintingController.toggleIsLiked(for: (paint)!)
        
        if chosenPainting.isLiked == true {
            cell.likeButton.setTitle("unlike", for: .normal)
        }else {
            cell.likeButton.setTitle("like", for: .normal)
        }
    }
}
