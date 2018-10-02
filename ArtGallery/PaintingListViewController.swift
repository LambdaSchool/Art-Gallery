//
//  PaintingListViewController.swift
//  ArtGallery
//
//  Created by Sean Hendrix on 9/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PaintingListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        dataSource()
    }
    
    @IBOutlet weak var tableViewOutlet: UITableViewCell!
    let newController = PaintingController()
    
    

}
