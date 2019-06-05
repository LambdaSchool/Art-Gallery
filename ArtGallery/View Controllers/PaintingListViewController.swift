//
//  PaintingListViewController.swift
//  ArtGallery
//
//  Created by Welinkton on 9/1/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PaintingListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, PaintingTableViewCellDelegate {
    
   // var delegate: PaintingTableViewCellDelegate?  
    
    // what we want to happen when Cell is interacted with
    
    func likeButtonWasTapped(on cell: PaintingTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell) else {return}
            let painting = paintingController.paintings[indexPath.row]
            paintingController.toggleIsLiked(painting: painting)
            tableView.reloadRows(at: [indexPath], with: .bottom)
        
        // testing if information was passed by clicking button
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
        cell.delegate = self   // if you comment this out.. the button wont work.
        //cell.updateViews()   // Perferable way
        
       // Added Text Label to toggle.
       // painting.isLiked ? (cell.textLabel?.text = "Unlike") : (cell.textLabel?.text = "Like")
        
       // lets try button label to toggle -  works
       // painting.isLiked ? (cell.likeButton.setTitle("Unlike", for: .normal)) : (cell.likeButton.setTitle("Like", for: .normal))
        
        return cell
    }
  
    @IBOutlet weak var tableView: UITableView!
    
    let paintingController = PaintingController()
    // let paintingListViewController = PaintingListViewController()
    
}




