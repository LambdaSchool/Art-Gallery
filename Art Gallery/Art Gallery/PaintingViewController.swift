//
//  PaintViewControlleer.swift
//  Art Gallery
//
//  Created by Cameron Dunn on 1/14/19.
//  Copyright © 2019 Cameron Dunn. All rights reserved.
//

import Foundation
import UIKit

var paintings : [Painting] = []

class PaintingViewController : UIViewController, UITableViewDataSource, UITableViewDelegate, PaintingTableViewCellDelegate{
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell) else {return}
        if(paintings[indexPath.row].isLiked == false){
            paintings[indexPath.row].isLiked = true
            cell.button.setTitle("Unlike", for: .normal)
        }else{
            paintings[indexPath.row].isLiked = false
            cell.button.setTitle("Like", for: .normal)
        }
        print("Pushed a button")
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? PaintingTableViewCell
        cell?.delegate = self
        cell?.imageToShow.image = paintings[indexPath.row].image
        return cell!
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        var i : Int = 1
        while(i <= 12){
            paintings.append(Painting(image: UIImage(named: "Image\(i)")!,isLiked: false))
            i+=1
        }
        tableView.reloadData()
    }
    
}
