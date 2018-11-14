import UIKit

class PaintingModel : NSObject, UITableViewDataSource, PaintingTableViewCellDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as? PaintingTableViewCell else {return UITableViewCell()}
        cell.imageView?.image = paintings[indexPath.row].image
        cell.delegate = self
        return cell
    }
    
    weak var tableView : UITableView?
    
    func numberOfSections(in tableView: UITableView) -> Int {
        self.tableView = tableView
        return 1
    }
    
    
    let reuseIdentifier = "cell"
    
    var paintings : [Painting] = []
    
    
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        guard let indexPath = tableView?.indexPath(for: cell) else {fatalError("The cell does not exist(tappedLikeButton)")}
        paintings[indexPath.row].isLiked.toggle()
    }
    
    
    override init() {
        
        for counter in 1 ... 12 {
            let imageName = "Image\(counter)"
            if let image = UIImage(named: imageName) {
                let painting = Painting(image)
                paintings.append(painting)
            }
            
        }
        
    }
}
