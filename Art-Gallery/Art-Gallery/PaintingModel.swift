import UIKit

class PaintingModel: NSObject, UITableViewDataSource, PaintingTableViewCellDelegate {
    
    var paintings: [Painting] = []
    
    weak var tableView: UITableView?
    
    
    
}
