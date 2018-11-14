import UIKit

struct Painting: Equatable {
    // Should these be optionals?
    let image: UIImage
    var isLiked: Bool
    
    init(image: UIImage) {
        self.image = image
        isLiked = false
    }
    
// In case optionals are needed later.
//    init(image: UIImage? = nil, isLiked: Bool? = nil) {
//        self.image = image
//        self.isLiked = isLiked
//    }

}
