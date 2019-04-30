//
//  PaintingModel.swift
//  Art-Gallery
//
//  Created by Jeremy Taylor on 4/30/19.
//  Copyright © 2019 Bytes-Random L.L.C. All rights reserved.
//

import UIKit

class PaintingModel: NSObject, UITableViewDataSource, PaintingTableViewCellDelegate {
    
    weak var tableView: UITableView?
    private (set) var paintings: [Painting] = []
    
    override init() {
        for i in 1...12 {
            guard let image = UIImage(named: "Image\(i).jpg") else { return }
            let painting = Painting(image: image)
            paintings.append(painting)
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        self.tableView = tableView
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? PaintingTableViewCell else { return PaintingTableViewCell() }
        cell.delegate = self
        let painting = paintings[indexPath.row]
        let title = painting.isLiked ? "Unlike" : "Like"
        cell.portraitView.image = painting.image
        cell.likeButton.setTitle(title, for: .normal)
        
        return cell
    }
    
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        guard let indexPath = tableView?.indexPath(for: cell) else { return }
        paintings[indexPath.row].isLiked.toggle()
        
        tableView?.reloadRows(at: [indexPath], with: .automatic)
        
    }
}
