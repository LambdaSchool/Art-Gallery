// a custom protocol for communicating between your cell and your model

import Foundation
import UIKit

protocol PaintingTableViewCellDelegate: class {
    func tappedLikeButton(on cell: PaintingTableViewCell)
}
