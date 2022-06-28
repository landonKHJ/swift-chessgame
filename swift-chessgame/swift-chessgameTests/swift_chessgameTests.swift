//
//  swift_chessgameTests.swift
//  swift-chessgameTests
//
//  Created by Landon.kim on 2022/06/20.
//

import XCTest
@testable import swift_chessgame

class swift_chessgameTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testInitializeAndSetupChessBoard() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
        
        let game = ChessBoard()
        
        game.setupNewGame()
        
        XCTAssertTrue(game.pieces.count == 8)
        XCTAssertTrue(game.pieces[0].count == 8)
        XCTAssertTrue(game.display(row: 0) == "♜♞♝.♛♝♞♜")
        XCTAssertTrue(game.display(row: 1) == "♟♟♟♟♟♟♟♟")
        XCTAssertTrue(game.display(row: 2) == "........")
        XCTAssertTrue(game.display(row: 6) == "♙♙♙♙♙♙♙♙")
        XCTAssertTrue(game.display(row: 7) == "♖♘♗.♕♗♘♖")
        
        XCTAssertTrue(game.displayFull() == """
♜♞♝.♛♝♞♜
♟♟♟♟♟♟♟♟
........
........
........
........
♙♙♙♙♙♙♙♙
♖♘♗.♕♗♘♖
""")
            
        XCTAssertTrue(game.score(color: .White) == 39)
        XCTAssertTrue(game.score(color: .Black) == 39)
    }
    
    func testPosition() {
        if let test = Position("H5") {
            XCTAssertTrue(test.file == 7)
            XCTAssertTrue(test.rank == 4)
            XCTAssertTrue(test.origin == "H5")
        }
        
        if let test = Position("G3") {
            XCTAssertTrue(test.indexPath == IndexPath(row: 6, section: 2))
        }
        
        if let test = Position(IndexPath(row: 5, section: 2)) {
            XCTAssertTrue(test.file == 2)
            XCTAssertTrue(test.rank == 5)
        }
    }
    
    func testPositonMove()  {
        if var test = Position("G3") {
            test.move(.left, step: 1)
            XCTAssertEqual(test, Position("F3")!)
        }
        
        if var test = Position("G3") {
            test.move(.right, step: 1)
            XCTAssertEqual(test, Position("H3")!)
        }
        
        if var test = Position("G3") {
            test.move(.up, step: 1)
            XCTAssertEqual(test, Position("G2")!)
        }
        
        if var test = Position("G3") {
            test.move(.down, step: 1)
            XCTAssertEqual(test, Position("G4")!)
        }
        
        if var test = Position("G3") {
            test.move(.leftUp, step: 1)
            XCTAssertEqual(test, Position("F2")!)
        }
        
        if var test = Position("G3") {
            test.move(.rightUp, step: 1)
            XCTAssertEqual(test, Position("H2")!)
        }
        
        if var test = Position("G3") {
            test.move(.leftDown, step: 1)
            XCTAssertEqual(test, Position("F4")!)
        }
        
        if var test = Position("G3") {
            test.move(.rightDown, step: 1)
            XCTAssertEqual(test, Position("H4")!)
        }
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
