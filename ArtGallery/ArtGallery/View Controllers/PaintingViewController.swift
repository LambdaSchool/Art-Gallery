//
//  PaintingViewController.swift
//  ArtGallery
//
//  Created by Dustin Koch on 1/14/19.
//  Copyright © 2019 Rabbit Hole Fashion. All rights reserved.
//

import UIKit

    

class PaintingViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, PaintingTableViewCellDelegate {
    
    var paintings: [Painting] = []
    
    //MARK: - Setting up delegates
    
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        if paintings[indexPath.row].isLiked == false {
            paintings[indexPath.row].isLiked = true
            cell.button.setTitle("Unliked", for: .normal)
        } else {
            paintings[indexPath.row].isLiked = false
            cell.button.setTitle("Liked", for: .normal)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! PaintingTableViewCell
        
        cell.imageView!.image = paintings[indexPath.row].image
        cell.textLabel?.text = ""
        
        cell.delegate = self
        
        return cell
        
    }
    
    //MARK: - Loading

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var counter: Int = 1
        
        while counter <= 12 {
            paintings.append(Painting(image: UIImage(named: "Image\(counter)")!, isLiked: false))
            counter += 1
        }
        
        tableView.reloadData()
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    //MARK: - Outlets
    
    @IBOutlet weak var tableView: UITableView!
    
}
