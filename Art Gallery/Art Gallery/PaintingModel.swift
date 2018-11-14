import UIKit

class PaintingModel: NSObject, UITableViewDataSource, PaintingTableViewCellDelegate {
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        guard let painting = cell.painting else { return }
        toggleIsLiked(painting)
        let title = painting.isLiked ? "Unlike" : "Like"
        
        cell.likeButton.setTitle(title, for: .normal)
        // UIControl.normal
  
    }
    
    func toggleIsLiked(_ painting: Painting) {
        guard let index = paintings.index(of: painting) else { return }
        paintings[index].isLiked.toggle()
    }
    
    // Alternate way
    //    guard let indexPath = tableView?.indexPath(for:cell) els {fatalError(“Error message”)}
    //// The error message could be more specific. It says how the cell does not exist.
    //    paintings[indexPath.row].isLiked?.toggle()
    //}
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    weak var tableView: UITableView?
    
    var paintings: [Painting] = []
    
    // initializer
    
    override init() {
        
        var imageArray: [UIImage] = []
        for currentImage in 1 ... 12 {
            let imageName = "image\(currentImage)"
            if let image = UIImage(named: imageName) {
                imageArray.append(image)
            }
        }
        
        for image in imageArray {
            paintings.append(Painting(image: image))
        }
        
    }
}
