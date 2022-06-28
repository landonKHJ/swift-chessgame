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
    
    func display() -> String
    func availablePaths() -> [Paths]?
}

public class Piece: PieceStub {
    var score: Int { 0 }
    
    var color: PieceColor
    
    init(color: PieceColor = .White) {
        self.color = color
    }
    
    func display() -> String {
        "."
    }
    
    func availablePaths() -> [Paths]? {
        nil
    }
}


// 체스판 좌표 기준 뷰모델 설계중
public class BoardCoordinateViewModel {
    var piece: Piece?
    var selected: Bool
    var movabled: Bool
    
    init(piece: Piece) {
        self.piece = piece
        self.selected = false
        self.movabled = false
    }
}
