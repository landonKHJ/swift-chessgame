//
//  King.swift
//  ChessGame
//
//  Created by Landon.kim on 2022/06/23.
//

import Foundation

/*
Board나 Pawn 같은 기존 코드가 없는 상태에서 시작한다고 가정하세요
다음 기능을 담당하는 King 클래스를 작성하면서 단위 테스트를 함께 작성하세요

필요한 속성 :

색상 = 블랙 / 화이트

현재 위치 = Rank 와 File

블랙 King은 위치가 D1 (1-Rank , D-File) 에 생성 가능한 지 확인

화이트 King은 위치가 D8 (8-Rank , D-File) 에만 생성 가능한 지 확인

현재 위치에서 대각선, 전후, 좌우 방향으로 1칸 이동 가능한 지 확인

King 클래스 인스턴스끼리 동일한 지 판단
*/

enum ColorType {
    case White
    case Black
}

struct Position {
    var file: String // ABCD
    var rank: String // 1234
}

enum Moving {
    case leftDown
    case left
    case leftUp
    case down
}

class King {
    
    var color: ColorType
    var postion: Position
    
    init(color: ColorType) {
        self.color = color
        
        switch color {
            case .White:
                postion = Position(file: "D", rank: "8")
            case .Black:
                postion = Position(file: "D", rank: "1")
        }
    }
}

extension King : Equatable {
    static func == (lhs: King, rhs: King) -> Bool {
        
        ObjectIdentifier(lhs) == ObjectIdentifier(rhs)
    }
}
