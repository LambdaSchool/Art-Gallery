//
//  ViewController.swift
//  ArtGallery
//
//  Created by Jocelyn Stuart on 1/14/19.
//  Copyright © 2019 JS. All rights reserved.
//

import UIKit

class PaintingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
   
    weak var delegate: PaintingTableViewCellDelegate?
    
    @IBOutlet weak var portraitView: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var likeButton: UIButton!
    
}

