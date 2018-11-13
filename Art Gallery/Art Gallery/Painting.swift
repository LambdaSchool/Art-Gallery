import UIKit

struct Painting {
    let image : UIImage?
    var isLiked : Bool?
    
    init(_ image : UIImage?, _ isLiked: Bool = false) {
        self.image = image
        self.isLiked = isLiked
    }
}
