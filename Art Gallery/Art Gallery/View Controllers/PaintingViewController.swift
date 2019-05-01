//
//  PaintingViewController.swift
//  Art Gallery
//
//  Created by Michael Stoffer on 4/30/19.
//  Copyright © 2019 Michael Stoffer. All rights reserved.
//

import UIKit

class PaintingViewController: UIViewController {

    let paintingModel = PaintingModel()
    @IBOutlet weak var paintingTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.paintingTableView.delegate = self
        self.paintingTableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.paintingTableView.reloadData()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension PaintingViewController: UITableViewDelegate {
}

extension PaintingViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.paintingModel.paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PaintingCell", for: indexPath)
        
        guard let paintingCell = cell as? PaintingTableViewCell else { return cell }
        
        let painting = paintingModel.paintings[indexPath.row]
        paintingCell.painting = painting
        paintingCell.delegate = self
        
        let isLikedText = painting.isLiked ? "Unlike" : "Like"
        paintingCell.likeButton.setTitle(isLikedText, for: .normal)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let currentImage = self.paintingModel.paintings[indexPath.row].image
        let imageCrop = currentImage.getCropRatio()
        return tableView.frame.width / imageCrop
    }
}

extension UIImage {
    func getCropRatio() -> CGFloat {
        let widthRatio = CGFloat(self.size.width / self.size.height)
        return widthRatio
    }
}

extension PaintingViewController: PaintingTableViewCellDelegate {
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        guard let indexPath = paintingTableView.indexPath(for: cell) else { return }
        
        self.paintingModel.toggledAppreciation(at: indexPath)
    }
}
