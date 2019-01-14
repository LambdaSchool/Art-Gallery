//
//  PaintingModel.swift
//  ArtGallery
//
//  Created by Jocelyn Stuart on 1/14/19.
//  Copyright © 2019 JS. All rights reserved.
//

import Foundation
import UIKit

class PaintingModel: NSObject, UITableViewDataSource, PaintingTableViewCellDelegate {
    
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    weak var tableView: PaintingViewController?
    
    var paintings: [Painting] = []
    
    for n in 1...12) {
        let imageName = "image\(n)"
        if let image = UIImage(named: imageName) {
    // Initialize a painting
        image = Painting(
    // Add it to the paintings array
    }
    }
}
