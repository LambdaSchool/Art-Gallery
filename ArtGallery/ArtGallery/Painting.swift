// the basic painting instance type
//

import Foundation
import UIKit

struct Painting {
    
    let image: UIImage
    var isLiked: Bool
    
    init(_ anImage : UIImage){
        isLiked = false
        image = anImage
    }
}
