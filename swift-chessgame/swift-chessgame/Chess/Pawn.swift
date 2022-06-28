//
//  Pawn.swift
//  swift-chessgame
//
//  Created by Landon.kim on 2022/06/27.
//

import Foundation

/**Pawn 요구사항
 생성 위치는 흑색은 2-rank 또는 백색 7-rank에만 가능하다.

 백색은 더 작은 rank로 움직일 수 있고, 흑색은 더 큰 rank로 움직일 수 있다.

 체스 게임과 달리 처음에도 1칸만 움직일 수 있고, 다른 말을 잡을 때도 대각선이 아니라 직선으로 움직일 때 잡는다고 가정한다.*/


public class Pawn: Piece {
    
    let initialWhitePostion: [Position] = ["A7","B7","C7","D7","E7","F7","G7","H7"].map { Position($0)! }
    let initialBlackPostion: [Position] = ["A2","B2","C2","D2","E2","F2","G2","H2"].map { Position($0)! }
    
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
    
    override func availablePaths() -> [Paths]? {
        if self.color == .White {
            
        } else {
            
        }
        
        return nil
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
    
    override func availablePaths() -> [Paths]? {
        if self.color == .White {
            
        } else {
            
        }
        
        return nil
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
    
    override func availablePaths() -> [Paths]? {
        if self.color == .White {
            
        } else {
            
        }
        
        return nil
    }
}

public class Rook : Piece {
    
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
    
    override func availablePaths() -> [Paths]? {
        if self.color == .White {
            
        } else {
            
        }
        
        return nil
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
    
    override func availablePaths() -> [Paths]? {
        if self.color == .White {
            
        } else {
            
        }
        
        return nil
    }
}
