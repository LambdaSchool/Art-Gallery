//
//  PaintingModel.swift
//  artGallery
//
//  Created by Michael Flowers on 1/14/19.
//  Copyright © 2019 Michael Flowers. All rights reserved.
//

import Foundation
import UIKit

class PaintingModel: NSObject {
    
    
    //MARK: - Properties
    var paintings = [Painting]()
    weak var myTableView: UITableView?
    var didLike = false
    
    override init(){
        super.init()
        loadPaintings()
    }
    
    func loadPaintings(){
        for image in 1...12{
            let imageName = "Image\(image)"
            if let image = UIImage(named: imageName){
                let painting = Painting(image: image, isLiked: false)
                paintings.append(painting)
            }
        }
    }
    
    
}

//MARK: - UITableViewDataSource Methods
extension PaintingModel : UITableViewDataSource , PaintingTableViewCellDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? PaintingTableViewCell else { return UITableViewCell() }
        let image = paintings[indexPath.row].image
        cell.imageView?.image = image
        cell.painting = paintings[indexPath.row]
        cell.delegate = self
        return cell
    }
    
    func toggleIsLiked(for painting: Painting) {
        painting.isLiked = !painting.isLiked
    }
    
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        print("delegate was triggered")
        //This is where you change the property on the data model
        
        guard let indexPath = myTableView?.indexPath(for: cell) else { return }
        
        let painting = paintings[indexPath.row]
        
        toggleIsLiked(for: painting)
        myTableView?.reloadData()
        
        
    }
}

