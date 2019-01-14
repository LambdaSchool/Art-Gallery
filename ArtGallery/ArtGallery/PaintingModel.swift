//
//  PaintingModel.swift
//  ArtGallery
//
//  Created by Jocelyn Stuart on 1/14/19.
//  Copyright © 2019 JS. All rights reserved.
//

import Foundation
import UIKit

class PaintingModel: NSObject, UITableViewDataSource, PaintingTableViewCellDelegate {
    
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        if isLiked == false {
            
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        weak var tableView: PaintingViewController?
    }
    
    func loadImages() {
        for n in 1...12 {
            let imageName = "image\(n)"
            if let imagePic = UIImage(named: imageName) {
                // Initialize a painting
                var painting = Painting(image: imagePic, isLiked: false)
                // Add it to the paintings array
                paintings.append(painting)
            }
        }
    }
    
    
    var paintings: [Painting] = []
    
    override init() {
        loadImages()
    }
    
    
}
