import Foundation
import UIKit

// Painting.swift: The basic painting instance type
/*
 In Painting.swift create a Painting struct. Include two fields: an image constant (of UIImage )
 and a variable isLiked Boolean. Add an initializer. Default isLiked to false in the initializer.
 */

struct Painting {
    let image: UIImage
    var isLiked: Bool = false
    // Do I set the default value for isLike for the property or in the intializer?
    
    init(image: UIImage){
    //init(image: UIImage, isLiked: Bool = false){
        self.image = image  // Check Later...
        //self.isLiked = isLiked
    }
 
    
    //init(){}
    
}
