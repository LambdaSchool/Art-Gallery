import UIKit

class PaintingModel: NSObject, UITableViewDataSource, PaintingTableViewCellDelegate {
    
    var paintings: [Painting] = []
    
    weak var tableView: PaintingViewController?
    
    override init() {
        super.init()
            loadPaintings()
    }
    
    func loadPaintings() {
        for images in 1 ... 12 {
            let paintingName = "Image\(images)"
            guard let image = UIImage(named: paintingName) else { return }
            let painting = Painting(image: image)
            paintings.append(painting)
            print("Painting Names: \(paintingName)")
        }
    }
    
    // MARK: - TableView DataSource Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(paintings.count)
        return paintings.count
    
    }
    
    let reuseIdentifier = "PaintingCell"
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as? PaintingTableViewCell else {
            return UITableViewCell() }
        
        let painting = paintings[indexPath.row]
        cell.portraitView.image = painting.image
        cell.likeButton.setTitle("Like", for: .normal)
        //cell.textLabel?.text = painting.isLiked ? "Like" : "Unlike"
        cell.delegate = self
        
        return cell
    }
    
    // MARK: - Protocol Method
    
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        guard let painting = cell.likeButton else { return }
        //painting.setTitle("Like", for: .normal)

    }
}
