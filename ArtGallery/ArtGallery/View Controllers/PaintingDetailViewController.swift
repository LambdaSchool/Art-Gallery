import UIKit

class PaintingDetailViewController: UIViewController {
    
    @IBOutlet weak var detailImageView: UIImageView!
    
    @IBAction func dismissSegue(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
}
