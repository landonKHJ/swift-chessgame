//
//  Pawn.swift
//  swift-chessgame
//
//  Created by Landon.kim on 2022/06/27.
//

import Foundation

public class Pawn: Piece {
    override var score: Int {
        return 1
    }
    
    override func display() -> String {
        if self.color == .White {
             return "♙"
        } else {
            return "♟"
        }
    }
}

public class Bishop: Piece {
    
    override var score: Int {
        return 3
    }
    
    override func display() -> String {
        if self.color == .White {
            return "♗"
        } else {
            return "♝"
        }
    }
}

public class Knight : Piece {
    
    override var score: Int {
        return 3
    }
    
    override func display() -> String {
        if self.color == .White {
             return "♘"
        } else {
            return "♞"
        }
    }
}

public class Luke : Piece {
    
    override var score: Int {
        return 5
    }
    
    override func display() -> String {
        if self.color == .White {
             return "♖"
        } else {
            return "♜"
        }
    }
}

public class Queen : Piece {
    
    override var score: Int {
        return 9
    }
    
    override func display() -> String {
        if self.color == .White {
             return "♕"
        } else {
            return "♛"
        }
    }
}


public class King : Piece {
    
    override var score: Int {
        return 1
    }
}
