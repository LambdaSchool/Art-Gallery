//
//  PaintViewControlleer.swift
//  Art Gallery
//
//  Created by Cameron Dunn on 1/14/19.
//  Copyright © 2019 Cameron Dunn. All rights reserved.
//

import Foundation
import UIKit

class PaintingViewController : UIViewController, UITableViewDataSource, UITableViewDelegate, PaintingTableViewCellDelegate{
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? PaintingTableViewCell
        cell?.imageToShow.image = paintings[indexPath.row].image
        return cell!
    }
    
    var paintings : [Painting] = []
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        var i : Int = 1
        while(i <= 12){
            paintings.append(Painting(image: UIImage(named: "Image\(i)")!))
            i+=1
        }
        print(paintings.count)
        tableView.reloadData()
    }
    
}
