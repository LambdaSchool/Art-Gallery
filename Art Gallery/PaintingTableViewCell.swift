import UIKit

class PaintingTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var paintingPortraitView: UIImageView!
    
    @IBOutlet weak var likeButton: UIButton!

    weak var delegate: PaintingTableViewCellDelegate?
    
    @IBAction func likeButtonAction(_ sender: Any) {
        delegate?.tappedLikeButton(on: self)
    }
    
}
