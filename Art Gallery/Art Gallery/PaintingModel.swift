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
            let image = UIImage(named: imageName)
            
            let painting = Painting(image: image!)
            paintings.append(painting)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        <#code#>
    }
    
    //MARK: - Properties
    
    var paintings: [Painting] = []
    
    weak var tableView: UITableView?
}
