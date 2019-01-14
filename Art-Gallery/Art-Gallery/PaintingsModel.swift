//
//  PaintingModel.swift
//  Art-Gallery
//
//  Created by Angel Buenrostro on 1/14/19.
//  Copyright © 2019 Angel Buenrostro. All rights reserved.
//

import Foundation
import UIKit

class PaintingsModel : NSObject, UITableViewDataSource, PaintingTableViewCellDelegate {
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        guard let indexPath = tableView?.indexPath(for: cell)
            else { fatalError("No cell")}
        paintings[indexPath.row].isLiked.toggle()
        cell.likeButton.alpha = paintings[indexPath.row].isLiked ? 1.0 : 0.33
    }
    
    let reuseIdentifier = "cell"
    
    var paintings : [Painting] = []
    
    weak var tableView : UITableView?
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        self.tableView = tableView
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? PaintingTableViewCell else { fatalError("No cell")}
        
        cell.delegate = self
        let painting = paintings[indexPath.row]
        cell.imageView?.image = painting.image
        cell.likeButton.alpha = paintings[indexPath.row].isLiked ? 1.0 : 0.33
        
        
        return cell
    }
    
    override init() {
        
        for n in 1...12 {
            let imageName = "image\(n)"
            if let image = UIImage(named: imageName){
                let painting = Painting(image: image)
                paintings.append(painting)
            }
        }
    }
    
   
}
