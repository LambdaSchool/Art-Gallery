//
//  PaintViewControlleer.swift
//  Art Gallery
//
//  Created by Cameron Dunn on 1/14/19.
//  Copyright © 2019 Cameron Dunn. All rights reserved.
//

import Foundation
import UIKit

class PaintingViewController : UIViewController{
    @IBOutlet weak var tableView: UITableView!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        tableView.reloadData()
    }
    
}
