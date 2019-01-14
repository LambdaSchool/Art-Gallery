//
//  PaintingModel.swift
//  artGallery
//
//  Created by Michael Flowers on 1/14/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

import Foundation
import UIKit

class PaintingModel: NSObject, UITableViewDataSource, PaintingTableViewCellDelegate {
    
    //MARK: - Properties
    var paintings = [Painting]()
    var images = [UIImage]()
    weak var tableView: UITableView?
    
    override init(){ //this is our
        for image in 1...12{
            let imageName = "image\(image)"
            if let image = UIImage(named: imageName){
                images.append(image)
            }
        }
    }
}

