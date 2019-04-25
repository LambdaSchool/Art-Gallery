//
//  PainingModel.swift
//  ArtGallery
//
//  Created by Hayden Hastings on 4/24/19.
//  Copyright © 2019 Hayden Hastings. All rights reserved.
//

import Foundation
import UIKit

class PaintingModel: NSObject, UITableViewDelegate, UITableViewDataSource {
    weak var tableView: PaintingViewController?
    
    var paintings: [Painting] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        guard let imageCell = cell as? PaintingTableViewCell else { return cell }
        
        return cell
    }
}
