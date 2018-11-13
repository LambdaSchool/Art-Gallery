
import UIKit

class PaintingViewController: UIViewController {


    
    @IBOutlet weak var tableView: UITableView!
    
    let model = PaintingModel()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.dataSource = model
        tableView.reloadData()
    }
}

