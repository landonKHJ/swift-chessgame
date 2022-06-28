//
//  Position.swift
//  swift-chessgame
//
//  Created by Landon.kim on 2022/06/27.
//

import Foundation
import UIKit

// 보드 화면 기준으로 판단
enum Moving {
    case leftUp
    case left
    case leftDown
    case up
    case down
    case rightUp
    case right
    case rightDown
}

enum Steping {
    case stop
    case step1
    case step2
    case infinite
}

typealias Path = (from: Position, to: Position)
typealias Paths = [Path]

struct Position {
    var file: Int
    var rank: Int
    
    let valuesForFile = ["A", "B", "C", "D", "E", "F", "G", "H"]
    let valuesForRank = ["1", "2", "3", "4", "5", "6", "7", "8"]
    
    var origin: String {
       
        return "\(valuesForFile[file])\(valuesForRank[rank])"
    }
    
    var indexPath: IndexPath {
        return IndexPath(row: self.file, section: self.rank)
    }
    
    init?(_ position: String) {

        let letters = position.map { String($0) }
        
        guard letters.count == 2,
              let file = valuesForFile.firstIndex(of: letters[0]),
              let rank = valuesForRank.firstIndex(of: letters[1])
        else {
            return nil
        }
        
        self.file = file
        self.rank = rank
    }
    
    init?(_ indexPath: IndexPath) {
        if indexPath.section.isInBoard && indexPath.row.isInBoard {
            self.file = indexPath.section
            self.rank = indexPath.row
        } else {
            return nil
        }
    }
}

extension Position : Equatable {
    static func == (lhs: Self, rhs: Self) -> Bool {
        lhs.rank == rhs.rank && lhs.file == rhs.file
    }
}

extension Position {
    mutating func move(_ direction: Moving, step: Int) {
        
        switch direction {
            case .leftDown:
                if (file-step).isInBoard && (rank+step).isInBoard {
                    file -= step
                    rank += step
                }
            case .left:
                if (file-step).isInBoard {
                    file -= step
                }
            case .leftUp:
                if (file-step).isInBoard && (rank-step).isInBoard {
                    file -= step
                    rank -= step
                }
            case .down:
                if (rank+step).isInBoard { rank += step}
            case .up:
                if (rank-step).isInBoard { rank -= step }
            case .rightDown:
                if (file+step).isInBoard && (rank+step).isInBoard {
                    file += step
                    rank += step
                }
            case .right:
                if (file+step).isInBoard {
                    file += step
                }
            case .rightUp:
                if (file+step).isInBoard && (rank-step).isInBoard {
                    file += step
                    rank -= step
                }
        }
    }
    
    func getPath(_ direction: Moving, step: Int) -> Path {
        var newPosition = self
        
        newPosition.move(direction, step: step)
        
        return (from: self, to: newPosition)
    }
}

extension Int {
    var isInBoard: Bool {
        return self >= 0 && self < ChessBoard.boardSize
    }
}
