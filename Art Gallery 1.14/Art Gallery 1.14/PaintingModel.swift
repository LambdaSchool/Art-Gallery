import UIKit



class PaintingModel: NSObject, UITableViewDataSource, PaintingTableViewCellDelegate {
    
     weak var tableView: UITableView?
    
    var paintings: [Painting] = []
    
    override init() {
        for i in 1...12 {
            let imageString = ("Image\(i)")
            guard let image = UIImage(named: imageString) else { return }
            let painting = Painting(image: image)
            paintings.append(painting)
        }
    }
    
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        guard let indexPath = tableView?.indexPath(for: cell)
            else { fatalError("cell not found") }
        
        paintings[indexPath.row].isLiked.toggle()
        cell.likeButton.alpha = paintings[indexPath.row].isLiked ? 1.0: 0.33
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PaintingCell") as?
            PaintingTableViewCell else {
                fatalError("Could not instantiate guranteed cell type.")
        }
        
        cell.delegate = self
        
        cell.paintingView.image = paintings[indexPath.row].image
        let title = "👍"
        cell.likeButton?.setTitle(title, for: .normal)
        cell.likeButton.alpha = paintings[indexPath.row].isLiked ? 1.0 : 0.33
        
        return cell
    }
    
}
