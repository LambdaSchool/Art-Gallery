import UIKit

class PaintingModel: NSObject, UITableViewDataSource, PaintingTableViewCellDelegate {
    
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        guard let painting = cell.painting else { return }
        toggleIsLiked(painting)
        let title = painting.isLiked ? "Unlike" : "Like"
        cell.likeButton.setTitle(title, for: .normal)
        // UIControl.normal
    }
    
    func toggleIsLiked(_ painting: Painting) {
        guard let index = paintings.index(of: painting) else { return }
        paintings[index].isLiked.toggle()
    }
    
    // Alternate way
    //    guard let indexPath = tableView?.indexPath(for:cell) els {fatalError(“Error message”)}
    //// The error message could be more specific. It says how the cell does not exist.
    //    paintings[indexPath.row].isLiked?.toggle()
    //}
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintings.count
    }
    
    let reuseIdentifier = "cell"
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier) as? PaintingTableViewCell else { fatalError("Something is wrong in tableView -> cellorRowAt in PaintingModel.swift") }
        
        cell.cellDelegate = self
        
        // cell.likeButton.setTitle(title, for: .normal)
        // Possibly redundant. See above.
        
        cell.portraitView.image = paintings[indexPath.row].image
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        self.tableView = tableView
        return 1
        // 1 is the default value
        // https://developer.apple.com/documentation/uikit/uitableviewdatasource/1614860-numberofsections
    }
    
    
    weak var tableView: UITableView?
    // Instead of PaintingViewController, although it does seem to work.
    
    var paintings: [Painting] = []
    
    // initializer
    
    override init() {
        
        var paintingArray: [UIImage] = []
        for currentPainting in 1 ... 12 {
            let paintingName = "Painting\(currentPainting)"
            if let painting = UIImage(named: paintingName) {
                paintingArray.append(painting)
            }
        }
        
        for painting in paintingArray {
            paintings.append(Painting(image: painting))
        }
        
    }
}
