import Foundation
import UIKit

// PaintingModel.swift: The model that will store your application state.
/*
 Create a PaintingModel class that descends from NSObject and conforms to both UITableViewDataSource and
 PaintingTableViewCellDelegate
*/
class PaintingModel: NSObject, UITableViewDataSource, PaintingTableViewCellDelegate {
    let reuseIdentifier = "cell"
    
    // Add a weak tableView optional variable
    weak var tableView: UITableView?
    //Create a variable property called, which is an array of. Set its initial value to an empty array.
    var paintings: [Painting] = []
    
    
    // Build an initializer that uses the numbers 1 through 12 to load assets into an Image Array
    // Am I supposed to create a new array that holds images or do I use "paintings" array. I don't
    // know what "Build an initializer means"? Do I need to make a function?
    var imageArray: [UIImage] = []
    override init() {
        let imageName = "Image"
        for number in 1 ... 12 {
            //imageName.append(String(image))
            imageArray.append(UIImage(named: imageName + String(number))!)
            paintings.append(Painting(image: imageArray[number]))
        }
    }
    
    // Required for UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintings.count
    }
    
    // Required for UlTableViewDataSource
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
        cell.imageView?.image = [imageArray(at: indexPath.row)]
        return cell
    }
    
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        print("Like Button was Tapped")
    }
}
