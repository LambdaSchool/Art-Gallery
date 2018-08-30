//
//  PaintingListViewController.swift
//  ArtGallery
//
//  Created by Farhan on 8/29/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PaintingListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintingController.paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PaintingCell", for: indexPath) as? PaintingTableViewCell else {return UITableViewCell()}
        
        // Configure the cell...
        
        let painting = paintingController.paintings[indexPath.row]
        cell.painting = painting
        

        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
//        paintingTableView.dataSource = paintingController as? UITableViewDataSource
        
        paintingTableView.delegate = self
        paintingTableView.dataSource = self
        
                // Do any additional setup after loading the view.
    }


    let paintingController = PaintingController()
    
    @IBOutlet weak var paintingTableView: UITableView!
    
    
    
}
