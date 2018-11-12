import UIKit

class PaintingViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    @IBOutlet weak var tableView: PaintingTableViewCell!
    
    
    
    
    weak var dontKnow: PaintingTableViewCellDelegate?
    
    @IBOutlet weak var likeButton: UIButton!
    
    @IBOutlet weak var portraitView: UIImageView!
    

}

