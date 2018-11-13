import Foundation
import UIKit

class PaintingModel: NSObject, UITableViewDataSource, PaintingTableViewCellDelegate {
    func tappedLikeButton(on cell: PaintingTableViewCell) {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return paintings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
   
    
    let reuseIdentifier = "cell"
    
    weak var tableView: UITableView!
    
    var paintings: [Painting] = []
    var newPainting: [UIImage] = []
    
    
        override init() {
            for number in 1 ... 12 {
                let imageName = "Image\(number)"
                if let image = UIImage(named: imageName) {
                newPainting.append(image)
                }
            
    
//
                for image in newPainting {
                    paintings.append(Painting(image: image))
        }
            }
    }
    
        func viewWillAppear(_ animated: Bool) {
            tableView?.dataSource = self
            tableView?.delegate = self as? UITableViewDelegate
            tableView?.reloadData()
        }
    
    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "String", for: indexPath)
//
//    }
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return paintings.count
//    }
//
//    func tappedLikeButton(on cell: PaintingTableViewCell) {
//        print("test")
//    }
//
    
    }

    

