//
//  PaintingListViewController.swift
//  ArtGallery
//
//  Created by Jordan Davis on 5/1/19.
//  Copyright © 2019 Jordan Davis. All rights reserved.
//

import UIKit

class PaintingListViewController: UIViewController, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    
    
    //MARK: -UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintingController.paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PaintingCell", for: indexPath) as? PaintingTableViewCell else { fatalError("Cell must have reuse identifier PaintingCell, and be of type PaintingTableViewCell") }
    }
    
    let painting = paintingController.paintings[indexPath.row]
    
    cell.painting = painting
    cell.delegate = self

    //MARK: -Properties
    let paintingController = PaintingController()
    @IBOutlet var tableView: UIView!

}
