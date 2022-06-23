//
//  ChessGameUnitTest.swift
//  ChessGameUnitTest
//
//  Created by jinho on 2022/06/23.
//

import XCTest

class ChessGameUnitTest: XCTestCase {

    
    var whiteKing: King!
    var blackKing: King!
    
    override func setUpWithError() throws {
        whiteKing = King(color: .white)
        blackKing = King(color: .black)
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testColorFromKing() throws {
        XCTAssertTrue(whiteKing.color == .white)
        XCTAssertTrue(blackKing.color == .black)
    }
    
    func testPositionFromKing() throws {
        
        // given
        let position = "D8"
        
        // then
        XCTAssertEqual(whiteKing.postion.origin, position)
    }
    
    func testPostionFromBlackKing() throws {
        
        let position = "D1"
        
        XCTAssertEqual(blackKing.postion.origin, position)
    }

    func testEqualKings() throws {
       
        XCTAssertFalse(whiteKing == blackKing)
        XCTAssertTrue(blackKing == blackKing)
    }
    
    func testMovingPostionFromWhiteKing() throws {
        
        XCTAssertTrue(whiteKing.enableMovePosition(.down))
        XCTAssertFalse(whiteKing.enableMovePosition(.up))
        
        XCTAssertTrue(whiteKing.enableMovePosition(.left))
        XCTAssertTrue(whiteKing.enableMovePosition(.right))
        
        XCTAssertFalse(whiteKing.enableMovePosition(.rightUp))
        XCTAssertFalse(whiteKing.enableMovePosition(.leftUp))
        
        XCTAssertTrue(whiteKing.enableMovePosition(.rightDown))
        XCTAssertTrue(whiteKing.enableMovePosition(.leftDown))
    }
    
    func testMovingPostionFromBlackKing() throws {
        XCTAssertFalse(blackKing.enableMovePosition(.down))
        XCTAssertTrue(blackKing.enableMovePosition(.up))
        
        XCTAssertTrue(blackKing.enableMovePosition(.left))
        XCTAssertTrue(blackKing.enableMovePosition(.right))
        
        XCTAssertTrue(blackKing.enableMovePosition(.rightUp))
        XCTAssertTrue(blackKing.enableMovePosition(.leftUp))
        
        XCTAssertFalse(blackKing.enableMovePosition(.rightDown))
        XCTAssertFalse(blackKing.enableMovePosition(.leftDown))
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
