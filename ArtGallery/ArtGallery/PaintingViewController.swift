//
//  PaintingViewController.swift
//  ArtGallery
//
//  Created by Thomas Cacciatore on 4/24/19.
//  Copyright © 2019 Thomas Cacciatore. All rights reserved.
//

import UIKit

class PaintingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
