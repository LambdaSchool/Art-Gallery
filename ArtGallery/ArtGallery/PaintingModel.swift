//
//  PaintingModel.swift
//  ArtGallery
//
//  Created by Thomas Cacciatore on 4/24/19.
//  Copyright © 2019 Thomas Cacciatore. All rights reserved.
//

import UIKit

class PaintingModel: NSObject, UITableViewDataSource, PaintingTableViewCellDelegate {
    
    weak var tableView: UITableView?
    var paintings: [Painting] = []
    
    override init() {
        for image in 1...12 {
            let name = "image\(image)"
            let anImage = UIImage(named: name)!
            let aPainting = Painting(image: anImage)
            paintings[image] = aPainting
        }
    }
    
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
}
