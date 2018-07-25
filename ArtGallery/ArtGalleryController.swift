//
//  ViewController.swift
//  ArtGallery
//
//  Created by Spencer Curtis on 7/20/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class ArtGalleryController: UIViewController, UITableViewDelegate, UITableViewDataSource, PaintingCellDelegate
{
    
    //MARK: - UI Objects
    
    lazy var tableView: UITableView =
        {
            let tv = UITableView(frame: .zero, style: .plain)
            tv.delegate = self
            tv.dataSource = self
            tv.backgroundColor = .white
            tv.translatesAutoresizingMaskIntoConstraints = false
            tv.allowsSelection = false
            
            return tv
    }()
    
    //MARK: - Properties
    
    let paintingController = PaintingController()

    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        title = "Art Gallery"
        
        setupTableView()
    }

    //MARK: - TableView Datasource/Delegate
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "paintingCell", for: indexPath) as! PaintingCell
        
        cell.delegate = self
        let painting = paintingController.paintings[indexPath.row]
        cell.painting = painting
        
        return cell
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return paintingController.paintings.count
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 500
    }
    
    //MARK: - Functions
    
    func likeButtonTapped(on cell: PaintingCell)
    {
        guard let painting = cell.painting else { return }
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        paintingController.toggleIsLiked(for: painting)
        tableView.reloadRows(at: [indexPath], with: .fade)
    }
    
    private func setupTableView()
    {
        tableView.register(PaintingCell.self, forCellReuseIdentifier: "paintingCell")
        
        view.addSubview(tableView)
        
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }
    
    var startingFrame: CGRect?
    var blackBackgroundView: UIView?
    var startingImageView: UIImageView?
    
    internal func zoomTappedPainting(from cell: PaintingCell)
    {
        self.startingImageView = cell.paintingImageView
        self.startingImageView?.isHidden = true
        
        guard let frame = startingImageView?.frame else { return }
        startingFrame = startingImageView?.superview?.convert(frame, to: nil)
        
        let zoomingImageView = UIImageView(frame: startingFrame!)
        zoomingImageView.image = startingImageView?.image
        zoomingImageView.isUserInteractionEnabled = true
        zoomingImageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleZoomOut)))
        
        if let keyWindow = UIApplication.shared.keyWindow
        {
            blackBackgroundView = UIView(frame: keyWindow.frame)
            blackBackgroundView?.backgroundColor = UIColor.black
            blackBackgroundView?.alpha = 0
            
            keyWindow.addSubview(blackBackgroundView!)
            keyWindow.addSubview(zoomingImageView)
            
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                
                self.blackBackgroundView?.alpha = 1
                let height = self.startingFrame!.height / self.startingFrame!.width * keyWindow.frame.width
                zoomingImageView.frame = CGRect(x: 0, y: 0, width: keyWindow.frame.width, height: height)
                zoomingImageView.center = keyWindow.center
                
            }, completion: nil)
            
        }
    }
    
    @objc private func handleZoomOut(tapGesture: UITapGestureRecognizer)
    {
        if let zoomOutImageView = tapGesture.view
        {
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                
                zoomOutImageView.frame = self.startingFrame!
                self.blackBackgroundView?.alpha = 0
                
            }, completion: { (completed: Bool) in
                
                zoomOutImageView.removeFromSuperview()
                self.startingImageView?.isHidden = false
            })
        }
    }
}




















