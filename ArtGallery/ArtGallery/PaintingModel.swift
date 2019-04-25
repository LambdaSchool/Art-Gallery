//
//  PaintingModel.swift
//  ArtGallery
//
//  Created by Taylor Lyles on 4/24/19.
//  Copyright © 2019 Christopher Aronson. All rights reserved.
//

import UIKit

class PaintingModel: NSObject, UITableViewDataSource, PaintingTableViewCellDelegate {
    
    var paintings: [Painting] = []
    
    weak var tableView: UITableView?
    
    func numberOfSections(in tableView: UITableView) -> Int {
        self.tableView = tableView
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        guard let paintingCell = cell as? PaintingTableViewCell else { return cell }
        
        let painting = paintings[indexPath.row]
        paintingCell.delegate = self
        paintingCell.paintingImageView.image = painting.image
        paintingCell.likeButton.titleLabel?.text = painting.isLiked ? "Unlike" : "Like"
        
        
        return cell
        
    }
    
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        
        let index = tableView!.indexPath(for: cell)!.row
        
        if paintings[index].isLiked {
            paintings[index].isLiked = false
        } else {
            paintings[index].isLiked = true
        }
        
        tableView?.reloadData()
    }
    
    override init() {
        super.init()
        
        for paintingIndex in 1...12 {
            
            print("Image\(paintingIndex)")
            let thisImage = UIImage(named: "Image\(paintingIndex)")!
            let thisPainting = Painting(image: thisImage)
            paintings.append(thisPainting)
        }
        
    }
    
    
    
}

