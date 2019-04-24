//
//  PaintingModel.swift
//  ArtGallery
//
//  Created by Thomas Cacciatore on 4/24/19.
//  Copyright © 2019 Thomas Cacciatore. All rights reserved.
//

import UIKit

class PaintingModel: NSObject {//, UITableViewDataSource, PaintingTableViewCellDelegate {
    
//    func tappedLikeButton(on cell: PaintingTableViewCell) {
//
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//    }
    
    weak var tableView: UITableView?
    var paintings: [Painting] = []
    
    
    
    override init() {
        var imageArray: [UIImage] = []
        for image in 1...12 {
            let name = "image\(image)"
            
            let aPainting = UIImage(named: name)!
            
            imageArray.append(aPainting)
            print(imageArray[1])
            
        }
        
    }
  
}
