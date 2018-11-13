import UIKit

class PaintingModel: NSObject, UITableViewDataSource, PaintingTableViewCellDelegate {
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    weak var tableView: PaintingTableViewCell?
    
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
