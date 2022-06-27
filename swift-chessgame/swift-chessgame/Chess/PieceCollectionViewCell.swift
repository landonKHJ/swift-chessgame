//
//  PieceCollectionViewCell.swift
//  swift-chessgame
//
//  Created by Landon.kim on 2022/06/27.
//

import UIKit

class PieceCollectionViewCell: UICollectionViewCell {
    static let identifier = "PieceCollectionViewCell"
    
    @IBOutlet var display: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public func configure(with model: Piece?) {
        display.text = model?.display() ?? "."
    }
}
