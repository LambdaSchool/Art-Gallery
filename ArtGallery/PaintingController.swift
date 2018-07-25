//
//  PaintingController.swift
//  ArtGallery
//
//  Created by Simon Elhoej Steinmejer on 25/07/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import UIKit

class PaintingController
{
    private(set) var paintings = [Painting]()
    
    init()
    {
        loadPaintingsFromAssets()
    }
    
    func loadPaintingsFromAssets()
    {
        for index in 1...12
        {
            guard let image = UIImage(named: "Image\(index)") else { return }
            let painting = Painting(image: image, isLiked: false)
            paintings.append(painting)
        }
    }
    
    func toggleIsLiked(for painting: Painting)
    {
        if let index = paintings.index(of: painting)
        {
            if paintings[index].isLiked
            {
                paintings[index].isLiked = false
            }
            else
            {
                paintings[index].isLiked = true
            }
        }
    }
    
}

