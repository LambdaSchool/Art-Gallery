//
//  PaintingViewController.swift
//  artGallery
//
//  Created by Michael Flowers on 1/14/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

import UIKit

class PaintingViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet weak var myTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        myTableView.reloadData()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
