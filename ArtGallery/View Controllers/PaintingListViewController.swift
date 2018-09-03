//
//  PaintingListViewController.swift
//  ArtGallery
//
//  Created by Welinkton on 9/1/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PaintingListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, PaintingTableViewCellDelegate {
    
    var delegate: PaintingTableViewCellDelegate?
    
    func likeButtonWasTapped(on cell: PaintingTableViewCell) {
        
        print("I was clicked")
        
       // tableView.indexPath(for: PaintingTableViewCell)
        
    }
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.reloadData()
    }
    
    // MARK - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintingController.paintings.count
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PaintingCell", for: indexPath) as? PaintingTableViewCell else { return UITableViewCell()}
        
        // get an instance of painting from paintingController and pass it to cell
        
        let painting = paintingController.paintings[indexPath.row]
        
        cell.painting = painting
        cell.delegate = self
        
        return cell
    }
    
  
    @IBOutlet weak var tableView: UITableView!
    
    
    
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
   // override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    
    
    let paintingController = PaintingController()
    // let paintingListViewController = PaintingListViewController()
    
}
