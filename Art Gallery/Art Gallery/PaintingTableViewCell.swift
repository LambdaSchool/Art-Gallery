import UIKit

class PaintingTableViewCell: UITableView, UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    let model = PaintingModel()
    
    @IBAction func toggledAppreciation(_ sender: Any) {
        model.tappedLikeButton(on: self)
    }
    
}
