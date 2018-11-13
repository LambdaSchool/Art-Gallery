// model that will store application state

import Foundation
import UIKit

class PaintingModel: NSObject, UITableViewDataSource, PaintingTableViewCellDelegate {
    
    weak var tableView: UITableView?
    var paintings: [Painting] = []
    
    override init(){
        
        var imageArray: [UIImage] = []
        for index in 1...12{
            let imageName = "Image\(index)"
            if let image = UIImage(named: imageName){
                imageArray.append(image)
            }
        }
        
        for image in imageArray {
            paintings.append(Painting(image))
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reuseIdentifier = "cell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier) as? PaintingTableViewCell else {
            fatalError("Could not instantiate guaranteed cell type")
        }
        cell.degelateVariable = self
        cell.protraitView.image = paintings[indexPath.row].image
        
        let title = "Like"
        cell.likeButton?.setTitle(title, for: .normal)
        cell.likeButton.alpha = paintings[indexPath.row].isLiked ? 1.0 : 0.33
        
        return cell
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        self.tableView = tableView
        return 1
    }
    
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        guard let indexPath = tableView?.indexPath(for: cell)
            else { fatalError("Non-existent cell!!??") }
        
        paintings[indexPath.row].isLiked.toggle()
        cell.likeButton.alpha = paintings[indexPath.row].isLiked ? 1.0 : 0.33
    }
    

    
}
