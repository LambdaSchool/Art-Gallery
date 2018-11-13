import Foundation
import UIKit

class PaintingModel: NSObject, UITableViewDataSource, PaintingTableViewCellDelegate {
   
    
    let reuseIdentifier = "cell"
    
    weak var tableView: UITableView!
    
    var paintings: [Painting] = []
    var newPainting: [UIImage] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    }
        override init() {
            for number in 1 ... 12 {
                let imageName = "Image\(number)"
                guard let image = UIImage(named: imageName) else {return}
                let painting = Painting(image: image)
                paintings.append(painting)
            }
        }
    
        func viewWillAppear(_ animated: Bool) {
            tableView?.dataSource = self
            tableView?.delegate = self as? UITableViewDelegate
            tableView?.reloadData()
        }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        print("test")
    }
    
        
    }

    

