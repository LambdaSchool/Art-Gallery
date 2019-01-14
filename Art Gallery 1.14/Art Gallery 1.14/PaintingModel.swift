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
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
}
