//
//  Position.swift
//  swift-chessgame
//
//  Created by Landon.kim on 2022/06/27.
//

import Foundation

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


struct Position {
    var file: Int
    var rank: Int
    
    let valuesForFile = ["A", "B", "C", "D", "E", "F", "G", "H"]
    let valuesForRank = ["1", "2", "3", "4", "5", "6", "7", "8"]
    
    var origin: String {
       
        return "\(valuesForFile[file])\(valuesForRank[rank])"
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
}

