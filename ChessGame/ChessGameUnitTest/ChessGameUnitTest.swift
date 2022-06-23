//
//  ChessGameUnitTest.swift
//  ChessGameUnitTest
//
//  Created by jinho on 2022/06/23.
//

import XCTest

class ChessGameUnitTest: XCTestCase {

    
    var king: King!
    
    override func setUpWithError() throws {
        king = King(color: .white)
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testColorFromKing() throws {
        XCTAssertTrue(king.color == .white)
    }
    
    func testPositionFromKing() throws {
        
        // given
        let position = "D8"
        
        // then
        XCTAssertEqual(king.postion.origin, position)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
