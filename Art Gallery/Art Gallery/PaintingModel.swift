import UIKit

class PaintingModel : NSObject, UITableViewDataSource, PaintingTableViewCellDelegate {
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    let range : ClosedRange<Int> = 1...12
    
    weak var tableView: UITableView?
    var paintings : [Painting] = []
    
    init(range: ClosedRange<Int> = 1...12) {
        self.range = range
    }
    
    
    
}
