import UIKit

class PaintingViewController: UIViewController, UITableViewDelegate  {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
        tableView.delegate = self
    }
    
}
