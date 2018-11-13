import UIKit

class PaintingTableViewCell: UITableViewCell{

    @IBOutlet weak var portraitView: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    
    @IBAction func isLikedButton(_ sender: Any) {
        delegate?.tappedLikeButton(on: self)
    }
    
    //weak var delegate: PaintingModel?
    weak var delegate: PaintingTableViewCellDelegate?

}
