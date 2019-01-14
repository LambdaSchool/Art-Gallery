//
//  ViewController.swift
//  Art Gallery
//
//  Created by Moses Robinson on 1/14/19.
//  Copyright © 2019 Moses Robinson. All rights reserved.
//

import UIKit

class PaintingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    @IBOutlet weak var tableView: UITableView!
}

