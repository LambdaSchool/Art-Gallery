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
        
    }
    
    
    var paintings : [Painting] = []
    
    weak var myTableView : UITableView?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintings.count
        myTableView = tableView
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ImageCell", for: indexPath)
        guard let paintingCell = cell as? PaintingTableViewCell else { return cell }
        tableView.reloadData()
        
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
