import Foundation

// PaintingTableViewCellDelegate.swift: A custom protocol for communicating between your cell and your model

@objc
protocol PaintingTableViewCellDelegate: class {
    func tappedLikeButton(on cell: PaintingTableViewCell)
}
