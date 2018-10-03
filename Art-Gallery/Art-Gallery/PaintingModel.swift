import UIKit

class PaintingModel: NSObject, UITableViewDataSource, PaintingTableViewCellDelegate {
    
    var paintings: [Painting] = []
    
    weak var tableView: UITableView?
    
    override init() {
        loadPaintingsFromAssets()
    }
    
    func loadPaintingsFromAssets() {
        for i in 1...12 {
            let image : String = "Image\(i)"
            guard let UIImage = UIImage(named: image) else { return }
            let painting = Painting(image: UIImage)
            paintings.append(painting)
        }
    }
    
}
