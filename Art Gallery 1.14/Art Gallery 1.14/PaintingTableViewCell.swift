import UIKit

class PaintingTableViewCell: UITableViewCell {

    weak var delegate: PaintingTableViewCellDelegate?
    
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var paintingView: UIImageView!
    
    @IBAction func toggleIsLiked(_ sender: Any) {
        delegate?.tappedLikeButton(on: self)
        
    }
    
}
