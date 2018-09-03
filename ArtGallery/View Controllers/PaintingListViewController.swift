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
    
    // what we want to happen when Cell is interacted with
    
    func likeButtonWasTapped(on cell: PaintingTableViewCell) {
        
        guard let indexPath = tableView.indexPath(for: cell) else {return}
        let painting = paintingController.paintings[indexPath.row]
        paintingController.toggleIsLiked(painting: painting)
        tableView.reloadRows(at: [indexPath], with: .fade)
        
        print("I was clicked")
        
      
        
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
        
       // Added Text Label to toggle.
       // painting.isLiked ? (cell.textLabel?.text = "Unlike") : (cell.textLabel?.text = "Like")
        
       // lets try button label to toggle - Doesn't work
       // painting.isLiked ? (cell.likeButton?.setTitle = "Unlike", for .normal) : (cell.likeButton?.setTitle("Like", for: .normal))
        
        
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
