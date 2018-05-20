//
//  pinkeeperTests.swift
//  pinkeeperTests
//
//  Created by Nicholas Land on 5/18/18.
//  Copyright © 2018 Nick Land. All rights reserved.
//

import XCTest

@testable import pinkeeper

class pinkeeperTests: XCTestCase {
    
    let viewController = ViewController()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testStrikeCountsForTenPins() {
        let frame = Frame.init(firstBall: Mark.Strike, secondBall: nil)
        let game = [frame]
        
        XCTAssertEqual(viewController.calculateScore(frames: game), 10,
                       "A Strike should equate to 10 pins")
    }
    
    func testSpareCountsForTenPins() {
        let frame = Frame.init(firstBall: Mark.Two, secondBall: Mark.Spare)
        let game = [frame]
        
        XCTAssertEqual(viewController.calculateScore(frames: game), 10,
                       "A Spare should equate to ten pins")
    }
    
    func testTwoFramesYeildCorrectScore() {
        let frameOne = Frame.init(firstBall: Mark.Two, secondBall: Mark.Two)
        let frameTwo = Frame.init(firstBall: Mark.Two, secondBall: Mark.Two)
        let game = [frameOne, frameTwo]
        
        XCTAssertEqual(viewController.calculateScore(frames: game), 8,
                       "The total for this game should be 8")
    }
}
