//
//  PaintingModel.swift
//  Art Gallery
//
//  Created by Cameron Dunn on 1/14/19.
//  Copyright © 2019 Cameron Dunn. All rights reserved.
//

import Foundation
import UIKit

class PaintingModel : NSObject, UITableViewDataSource, PaintingTableViewCellDelegate{
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        
    }
    
    
    weak var tableView : UITableView?
    var paintings : [Painting] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? PaintingTableViewCell
        return cell!
    }
    
}
