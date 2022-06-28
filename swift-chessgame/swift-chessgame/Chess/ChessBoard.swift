//
//  ChessBoard.swift
//  swift-chessgame
//
//  Created by Landon.kim on 2022/06/20.
//

import Foundation

class ChessBoard {
    static let boardSize = 8
    
    var pieces: [[Piece?]] = []
    
    init() {
        setupNewGame()
    }
    
    func setupNewGame() {
        
        // 말들을 Array 로 만들어두고, 각 말이 생성 가능한 위치들을 받아서 놓는 방식도 고려
        // Pawn initialWhitePostion
        
        // 세 게임 작성
        // pieces = Array(repeating: Array(repeating: Piece(), count: 8), count: 8)
        pieces = [
            [Rook(color: .Black), Knight(color: .Black), Bishop(color: .Black), nil, Queen(color: .Black), Bishop(color: .Black), Knight(color: .Black), Rook(color: .Black)],
            Array(repeating: Pawn(color: .Black), count: 8),
            [nil,nil,nil,nil,nil,nil,nil,nil],
            [nil,nil,nil,nil,nil,nil,nil,nil],
            [nil,nil,nil,nil,nil,nil,nil,nil],
            [nil,nil,nil,nil,nil,nil,nil,nil],
            Array(repeating: Pawn(), count: 8),
            [Rook(), Knight(), Bishop(), nil, Queen(), Bishop(), Knight(), Rook()]
        ]
    }
    
    func displayFull() -> String {
        
        var rtnString = Array<String>.init()
        for i in 0..<pieces.count {
            rtnString.append(display(row: i))
        }
        return rtnString.joined(separator: "\n")
    }
    
    func display(row: Int) -> String {
        
        return pieces[row].map { String($0?.display() ?? ".") }.joined(separator: "")
    }
    
    func score(color: PieceColor) -> Int {
        
        return pieces.flatMap { $0 }
            .compactMap { $0 }
            .filter { $0.color == color }
            .compactMap { $0.score }
            .reduce(0, +)
    }
}
