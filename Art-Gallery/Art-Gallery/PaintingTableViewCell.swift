import UIKit

class PaintingTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var portraitView: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    
    weak var delegate: PaintingTableViewCellDelegate?
    
    @IBAction func toggledAppreciation(_ sender: Any) {
        
        delegate?.likeButtonWasTapped(on: self)
        
    }
}
