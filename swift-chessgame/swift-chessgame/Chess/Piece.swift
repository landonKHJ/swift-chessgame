//
//  Piece.swift
//  swift-chessgame
//
//  Created by Landon.kim on 2022/06/20.
//

import Foundation

public enum PieceColor {
    case White
    case Black
}

protocol PieceStub {
    var color: PieceColor { get set }
    var score: Int { get }
    
    var selected: Bool { get set }
    
    func display() -> String
}

public class Piece: PieceStub {
    var score: Int { 0 }
    
    var color: PieceColor
    var selected: Bool = false
    
    init(color: PieceColor = .White) {
        self.color = color
    }
    
    func display() -> String {
        return "."
    }
}
