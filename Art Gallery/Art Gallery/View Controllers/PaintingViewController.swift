//
//  PaintingViewController.swift
//  Art Gallery
//
//  Created by Stuart on 1/14/19.
//  Copyright © 2019 Stuart. All rights reserved.
//

import UIKit

class PaintingViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, PaintingTableViewCellDelegate {

    // Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintingController.paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "paintingCell", for: indexPath)
        
        guard let paintingCell = cell as? PaintingTableViewCell else {
            return cell
        }
        
        let painting = paintingController.paintings[indexPath.row]
        paintingCell.paintingView.image = painting.image
        
        return paintingCell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: - IBOutlets & Properties
    
    @IBOutlet weak var tableView: UITableView!
    
    let paintingController = PaintingController()
}
