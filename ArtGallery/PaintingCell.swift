//
//  ImageCell.swift
//  ArtGallery
//
//  Created by Simon Elhoej Steinmejer on 25/07/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

protocol PaintingCellDelegate: class
{
    func likeButtonTapped(on cell: PaintingCell)
    func zoomTappedPainting(from cell: PaintingCell)
}

class PaintingCell: UITableViewCell
{
    //MARK: - UI Objects
    
    let paintingImageView: UIImageView =
    {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.clipsToBounds = true
        iv.isUserInteractionEnabled = true

        return iv
    }()
    
    let likeButton: UIButton =
    {
        let button = UIButton(type: .system)
        button.setTitle("Like", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.green, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 20
        button.layer.masksToBounds = true
        button.layer.borderColor = UIColor.green.cgColor
        button.layer.borderWidth = 2
        
        return button
    }()
    
    //MARK: - Properties
    
    weak var delegate: PaintingCellDelegate?
    
    var painting: Painting?
    {
        didSet
        {
            updateViews()
        }
    }
    
    //MARK: - Functions
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?)
    {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .white
        isUserInteractionEnabled = true
        paintingImageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTappedImage)))
        likeButton.addTarget(self, action: #selector(handleLike), for: .touchUpInside)
        setupUI()
    }
    
    private func updateViews()
    {
        guard let painting = painting else { return }
        paintingImageView.image = painting.image
        likeButton.backgroundColor = painting.isLiked ? .green : .white
        likeButton.setTitleColor(painting.isLiked ? .white : .green, for: .normal)
    }
    
    @objc private func handleLike()
    {
        delegate?.likeButtonTapped(on: self)
    }
    
    @objc func handleTappedImage()
    {
        delegate?.zoomTappedPainting(from: self)
    }
    
    private func setupUI()
    {
        addSubview(paintingImageView)
        addSubview(likeButton)
        
        paintingImageView.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true
        paintingImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 0).isActive = true
        paintingImageView.rightAnchor.constraint(equalTo: rightAnchor, constant: 0).isActive = true
        paintingImageView.heightAnchor.constraint(equalToConstant: 440).isActive = true
        
        likeButton.topAnchor.constraint(equalTo: paintingImageView.bottomAnchor, constant: 20).isActive = true
        likeButton.leftAnchor.constraint(equalTo: leftAnchor, constant: 30).isActive = true
        likeButton.rightAnchor.constraint(equalTo: rightAnchor, constant: -30).isActive = true
        likeButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}










