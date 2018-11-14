import UIKit

class PaintingTableViewCell: UITableViewCell {
    var painting: Painting?

    @IBOutlet weak var portraitView: UIImageView!
    
    @IBOutlet weak var likeButton: UIButton!
    
    weak var cellDelegate: PaintingTableViewCellDelegate?
    
    @IBAction func toggledAppreciation(_ sender: Any) {
        cellDelegate?.tappedLikeButton(on: self)
    }
    
}
