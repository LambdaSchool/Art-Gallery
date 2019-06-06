//
//  PaintingListViewController.swift
//  ArtGallery
//
//  Created by Kennon Keys Ward on 6/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class PaintingListViewController: UIViewController, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PaintingTableViewCell", for: <#T##IndexPath#>) as? PaintingTableViewCell else { return UITableViewCell() }
        return cell
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    
    let paintingControler = PaintingControler()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
    }
    

}
