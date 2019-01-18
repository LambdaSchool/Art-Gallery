//
//  PaintingModel.swift
//  Art Gallery
//
//  Created by Moses Robinson on 1/14/19.
//  Copyright © 2019 Moses Robinson. All rights reserved.
//

import UIKit

class PaintingModel {
    
    init() {
        imageLoader()
    }
    
    func imageLoader() {
        for i in 1...12 {
            let imageName = "Image\(i)"
            guard let image = UIImage(named: imageName) else {return}
            let painting = Painting(image: image)
            
            paintings.append(painting)
        }
    }
    
    func updateIsLiked(painting: Painting) {
        guard let index = paintings.index(of: painting) else { return }
        paintings[index].isLiked.toggle()
    }
    
    //MARK: - Properties
    
    private(set) var paintings: [Painting] = []
    
    weak var tableView: UITableView?
}
