//
//  PaintingViewController.swift
//  ArtGallery
//
//  Created by Christopher Aronson on 4/24/19.
//  Copyright © 2019 Christopher Aronson. All rights reserved.
//

import UIKit

class PaintingViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


extension PaintingViewController: UITableViewDelegate {
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		
		if let vc = storyboard?.instantiateViewController(withIdentifier: "DetailPaintingVC") {
			present(vc, animated: true)
//			navigationController?.pushViewController(vc, animated: true)
		}
		

	}
}
