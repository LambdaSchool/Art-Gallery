import UIKit

class PaintingModel : NSObject, UITableViewDataSource, PaintingTableViewCellDelegate {
    
    let reuseIdentifier = "cell"
    
    var paintings : [Painting] = []
    var imageArray: [UIImage] = []
    var painting = Painting(nil, false)
    
    //func collectPaintingsInArray() -> [Painting] {
    /*for counter in 1 ... 12 {
    let imageName = "image\(counter)"
    if let image = UIImage(named: imageName) {
    imageArray.append(image)
    }
    
    }
    for index in imageArray {
    var painting = Painting(index, false)
    paintings.append(painting)
    }
    print(paintings)
    return paintings*/
    //}
    
    
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        if painting.isLiked == false {
            painting.isLiked = true
            cell.likeButton.setTitle("Unlike", for: .normal)
        } else {
            painting.isLiked = true
            cell.likeButton.setTitle("Like", for: .normal)
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (imageArray.count - 1)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        for counter in 1 ... 12 {
            let imageName = "image\(counter)"
            if let image = UIImage(named: imageName) {
                imageArray.append(image)
            }
            
        }
        for index in imageArray {
            var painting = Painting(index, false)
            paintings.append(painting)
        }
        print(paintings)
        
        
let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
        cell.imageView?.image = paintings[indexPath.row].image
        return cell
        
    }
    
    
}
