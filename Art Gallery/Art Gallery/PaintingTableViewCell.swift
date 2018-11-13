import Foundation
import UIKit

class PaintingTableViewCell: UITableViewCell {
    weak var delegate: PaintingTableViewCellDelegate?
    @IBOutlet weak var portraitView: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
}
