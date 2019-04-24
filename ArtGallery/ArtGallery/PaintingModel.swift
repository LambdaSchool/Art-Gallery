//
//  PaintingModel.swift
//  ArtGallery
//
//  Created by Taylor Lyles on 4/24/19.
//  Copyright © 2019 Christopher Aronson. All rights reserved.
//

import UIKit

class PaintModel: NSObject, UITableViewDataSource, PaintingTableViewCellDelegate {
    
    var paintings: [Painting] = []
    
    weak var tableView: UITableView?
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //FIXME: correct value in later
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //FIXME: correct value in later
        
        return UITableViewCell()
        
    }
    
    func tappedLikeButton(on cell: PaintingTableViewCell) {
    }
    
    override init() {
        super.init()
        
        for paintingIndex in 1...12 {
            print("Image\(paintingIndex)")
        }
        
    }
}

