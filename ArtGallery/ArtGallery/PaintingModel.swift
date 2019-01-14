//
//  PaintingModel.swift
//  ArtGallery
//
//  Created by Paul Yi on 1/14/19.
//  Copyright © 2019 Paul Yi. All rights reserved.
//

import UIKit

class PaintingModel: NSObject, UITableViewDataSource, PaintingTableViewCellDelegate {
    weak var tableView: UITableView?
    var paintings: [Painting] = []
    
    override init() {
        loadPaintingsFromAssets()
    }
    
    func loadPaintingsFromAssets() {
        for i in 1...12 {
            let image : String = "Image\(i)"
            guard let UIImage = UIImage(named: image) else { return }
            let painting = Painting(image: UIImage)
            paintings.append(painting)
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
