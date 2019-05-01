//
//  PaintingViewController.swift
//  Art-Gallery
//
//  Created by Jeremy Taylor on 4/30/19.
//  Copyright © 2019 Bytes-Random L.L.C. All rights reserved.
//

import UIKit

class PaintingViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }


}

