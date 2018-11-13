import UIKit

class PaintingModel: UITableViewDataSource, PaintingTableViewCellDelegate {
    static let shared = PaintingModel()
    private init() {}
    
    private var values: [UIImage] = []

   
    @IBOutlet weak var tableView: UITableView!
    
    
    // Build an initializer that uses the numbers 1 through 12 to load assets into an Image Array.
    var paintings: [Painting] = []
    for counter in 1 ... 12 {
    let
    
    }
    
 
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
}
