// model that will store application state

import Foundation
import UIKit

class PaintingModel: NSObject, UITableViewDataSource, PaintingTableViewCellDelegate {
    
    
    weak var tableView: UITableView?
    let reuseIdentifier = "cell"
    var paintings: [Painting] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let reuseIndentifier = "cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIndentifier, for: indexPath)
        
        cell.textLabel?.text = "Like"
        cell.imageView?.image = paintings[2].image
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return tableView.numberOfSections
    }
    
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        cell.likeButton.titleLabel?.text = "Liked"
    }
    
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
    
}
