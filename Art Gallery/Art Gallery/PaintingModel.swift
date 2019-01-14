//
//  PaintingModel.swift
//  Art Gallery
//
//  Created by Moses Robinson on 1/14/19.
//  Copyright © 2019 Moses Robinson. All rights reserved.
//

import UIKit

class PaintingModel: NSObject, UITableViewDataSource, PaintingTableViewCellDelegate {
    
    override init() {
        for i in 1...12 {
            
            let imageName = "Image\(i)"
            guard let image = UIImage(named: imageName) else {return}
            
            let painting = Painting(image: image)
            paintings.append(painting)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintings.count
    }
    
    let reuseIdentifier = "paintingCell"
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier) as! PaintingTableViewCell
        
        let title = "🔥"
        let painting = paintings[indexPath.row]
        
        cell.likeButton.setTitle(title, for: .normal)
        cell.portraitView.image = painting.image
        cell.likeButton.alpha = painting.isLiked ? 1.00 : 0.33
        cell.delegate = self
        
        return cell
    }
    
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        guard let indexPath = tableView?.indexPath(for: cell) else { return }
        var painting = paintings[indexPath.row]
        painting.isLiked.toggle()
        
        print("Button tapped")
        
        cell.likeButton.alpha = painting.isLiked ? 1.00 : 0.33
    }
    
    //MARK: - Properties
    
    var paintings: [Painting] = []
    
    weak var tableView: UITableView?
}
